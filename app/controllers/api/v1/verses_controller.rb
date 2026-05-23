class Api::V1::VersesController < ApplicationController
  include Pagy::Backend
  skip_before_action :authenticate_user!, only: [:his_will_guest]

  def search
    scope = feed_scope_for_search.order(:id)

    @pagy, @verses = pagy(scope, items: per_page)

    record_shown_verses_for_current_user if current_user && @verses.any?

    verses_data = @verses.map do |verse|
      verse_data = verse.as_json
      if current_user
        interaction = current_user.user_interactions.find_by(verse: verse)
        verse_data['liked'] = interaction&.liked || false
      else
        verse_data['liked'] = false
      end
      verse_data
    end

    render json: {
      verses: verses_data,
      pagination: pagy_metadata(@pagy)
    }
  end

  def his_will_guest
    scope = Verse.all
    if params[:category].present? && params[:category] != "his_will"
      scope = scope.joins(:tags).where(tags: { name: params[:category].capitalize })
    end

    @pagy, @verses = pagy(scope, items: per_page)

    verses_data = @verses.map do |verse|
      verse_data = verse.as_json
      verse_data['liked'] = false
      verse_data
    end

    render json: {
      verses: verses_data,
      pagination: pagy_metadata(@pagy)
    }
  end

  def search_by_id  
    verse = Verse.find(params[:id])
    render json: {
      verse: verse.as_json
    }
  end

  def search_by_address
    scope = Verse.all
    
    if params[:q].present?
      address_query = "%#{params[:q]}%"
      scope = scope.where('address ILIKE ?', address_query)
    end

    @pagy, @verses = pagy(scope, items: 3)

    verses_data = @verses.map do |verse|
      verse_data = verse.as_json
    end

    render json: {
      verses: verses_data,
      pagination: pagy_metadata(@pagy)
    }
  end

  def liked
    scope = current_user.liked_verses.reorder('user_interactions.created_at DESC, verses.id DESC')
    @pagy, @verses = pagy(scope, items: 100)

    verses_data = @verses.map do |verse|
      verse_data = verse.as_json
      verse_data['liked'] = true
      verse_data
    end

    render json: {
      verses: verses_data,
      pagination: pagy_metadata(@pagy)
    }
  end

  def toggle_like
    verse = Verse.find(params[:id])
    interaction = current_user.user_interactions.find_or_initialize_by(verse: verse)
    
    if interaction.persisted? && interaction.liked?
      interaction.update(liked: false)
      liked = false
    else
      interaction.liked = true
      interaction.save
      liked = true
    end
    
    render json: { liked: liked, message: liked ? 'Verse liked' : 'Verse unliked' }, status: :ok
  end

  private

  def verse_search_base
    scope = Verse.all
    if params[:category].present? && params[:category] != "his_will"
      scope = scope.joins(:tags).where(tags: { name: params[:category].capitalize }).distinct
    end
    scope
  end

  def feed_scope_for_search
    scope = verse_search_base
    return scope unless current_user

    shown_subquery = UserShownVerse.where(user: current_user).select(:verse_id)
    unseen = scope.where.not(id: shown_subquery)
    if unseen.none? && UserShownVerse.where(user: current_user).exists? && scope.exists?
      UserShownVerse.where(user: current_user).delete_all
      shown_subquery = UserShownVerse.where(user: current_user).select(:verse_id)
      unseen = scope.where.not(id: shown_subquery)
    end
    unseen
  end

  def record_shown_verses_for_current_user
    verse_ids = @verses.map(&:id)
    existing_ids = UserShownVerse.where(user: current_user, verse_id: verse_ids).pluck(:verse_id)
    new_ids = verse_ids - existing_ids
    return if new_ids.empty?

    now = Time.current
    rows = new_ids.map do |verse_id|
      { user_id: current_user.id, verse_id: verse_id, created_at: now, updated_at: now }
    end
    UserShownVerse.insert_all(rows)
  end

  def per_page
    (params[:per] || 3).to_i.clamp(1, 100)
  end

  def pagy_metadata(pagy)
    {
      page: pagy.page,
      per_page: pagy.items,
      pages: pagy.pages,
      count: pagy.count,
      prev: pagy.prev,
      next: pagy.next
    }
  end
end
