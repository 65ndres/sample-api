require "test_helper"

class Api::V1::VersesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create!(
      email: "user@example.com",
      password: "password123",
      password_confirmation: "password123",
      username: "testuser"
    )

    @token = Warden::JWTAuth::UserEncoder.new.call(@user, :user, nil).first

    @verse1 = Verse.create!(
      book: :Psalms,
      chapter: 23,
      verse: 1,
      text: "The Lord is my shepherd",
      address: "Psalms 23:1"
    )

    @verse2 = Verse.create!(
      book: :John,
      chapter: 3,
      verse: 16,
      text: "For God so loved the world",
      address: "John 3:16"
    )

    @verse3 = Verse.create!(
      book: :Genesis,
      chapter: 1,
      verse: 1,
      text: "In the beginning",
      address: "Genesis 1:1"
    )

    @tag1 = Tag.create!(name: "Your choice")
    @tag2 = Tag.create!(name: "His will")

    @verse1.tags << @tag1
    @verse2.tags << @tag1
    @verse3.tags << @tag2
  end

  def auth_headers(token)
    { "Authorization" => "Bearer #{token}" }
  end

  test "should search verses without category" do
    get "/api/v1/verses/search", headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert json_response["verses"].present?
    assert json_response["pagination"].present?
    assert_equal false, json_response["verses"][0]["liked"]
  end

  test "should search verses with category" do
    get "/api/v1/verses/search", params: { category: "your choice" }, headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert json_response["verses"].present?
    verse_ids = json_response["verses"].map { |v| v["id"] }
    assert_includes verse_ids, @verse1.id
    assert_includes verse_ids, @verse2.id
    assert_not_includes verse_ids, @verse3.id
  end

  test "should not filter by his_will category" do
    get "/api/v1/verses/search", params: { category: "his_will" }, headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert json_response["verses"].present?
  end

  test "should include liked status for authenticated user" do
    UserInteraction.create!(
      user: @user,
      verse: @verse1,
      liked: true
    )

    get "/api/v1/verses/search", headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    verse1_data = json_response["verses"].find { |v| v["id"] == @verse1.id }
    assert_equal true, verse1_data["liked"]
  end

  test "should include liked false for verses not liked" do
    get "/api/v1/verses/search", headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    verse1_data = json_response["verses"].find { |v| v["id"] == @verse1.id }
    assert_equal false, verse1_data["liked"]
  end

  test "should paginate search results" do
    get "/api/v1/verses/search", params: { per: 2 }, headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert json_response["pagination"].present?
    assert_equal 2, json_response["pagination"]["per_page"]
    assert json_response["pagination"]["page"].present?
    assert json_response["pagination"]["pages"].present?
    assert json_response["pagination"]["count"].present?
  end

  test "should clamp per_page between 1 and 100" do
    get "/api/v1/verses/search", params: { per: 0 }, headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert_equal 1, json_response["pagination"]["per_page"]

    get "/api/v1/verses/search", params: { per: 200 }, headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert_equal 100, json_response["pagination"]["per_page"]
  end

  test "should search verse by id" do
    get "/api/v1/verses/search_by_id", params: { id: @verse1.id }, headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert_equal @verse1.id, json_response["verse"]["id"]
    assert_equal "Psalms 23 1", json_response["verse"]["address"]
    assert_equal "The Lord is my shepherd", json_response["verse"]["text"]
  end

  test "should return not found for non-existent verse id" do
    get "/api/v1/verses/search_by_id", params: { id: 99_999 }, headers: auth_headers(@token)

    assert_response :not_found
  end

  test "should search verses by address" do
    get "/api/v1/verses/search_by_address", params: { q: "Psalms" }, headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert json_response["verses"].present?
    verse_ids = json_response["verses"].map { |v| v["id"] }
    assert_includes verse_ids, @verse1.id
  end

  test "should search verses by address with partial match" do
    get "/api/v1/verses/search_by_address", params: { q: "John" }, headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    verse_ids = json_response["verses"].map { |v| v["id"] }
    assert_includes verse_ids, @verse2.id
  end

  test "should search verses by address case insensitive" do
    get "/api/v1/verses/search_by_address", params: { q: "psalms" }, headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    verse_ids = json_response["verses"].map { |v| v["id"] }
    assert_includes verse_ids, @verse1.id
  end

  test "should return all verses when no query provided for search_by_address" do
    get "/api/v1/verses/search_by_address", headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert json_response["verses"].present?
    assert json_response["pagination"].present?
  end

  test "should paginate search_by_address results with 3 items per page" do
    get "/api/v1/verses/search_by_address", headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert_equal 3, json_response["pagination"]["per_page"]
  end

  test "should get liked verses for authenticated user" do
    UserInteraction.create!(
      user: @user,
      verse: @verse1,
      liked: true
    )
    UserInteraction.create!(
      user: @user,
      verse: @verse2,
      liked: true
    )
    UserInteraction.create!(
      user: @user,
      verse: @verse3,
      liked: false
    )

    get "/api/v1/liked", headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert json_response["verses"].present?
    verse_ids = json_response["verses"].map { |v| v["id"] }
    assert_includes verse_ids, @verse1.id
    assert_includes verse_ids, @verse2.id
    assert_not_includes verse_ids, @verse3.id
    assert_equal true, json_response["verses"][0]["liked"]
  end

  test "should require authentication for liked verses" do
    get "/api/v1/liked"

    assert_response :unauthorized
  end

  test "should paginate liked verses with 100 items per page" do
    UserInteraction.create!(
      user: @user,
      verse: @verse1,
      liked: true
    )

    get "/api/v1/liked", headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert_equal 100, json_response["pagination"]["per_page"]
  end

  test "should toggle like from false to true" do
    interaction = UserInteraction.create!(
      user: @user,
      verse: @verse1,
      liked: false
    )

    post "/api/v1/verses/#{@verse1.id}/toggle_like", headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert_equal true, json_response["liked"]
    assert_equal "Verse liked", json_response["message"]

    interaction.reload
    assert_equal true, interaction.liked
  end

  test "should toggle like from true to false" do
    interaction = UserInteraction.create!(
      user: @user,
      verse: @verse1,
      liked: true
    )

    post "/api/v1/verses/#{@verse1.id}/toggle_like", headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert_equal false, json_response["liked"]
    assert_equal "Verse unliked", json_response["message"]

    interaction.reload
    assert_equal false, interaction.liked
  end

  test "should create new interaction when toggling like on verse without interaction" do
    assert_difference "UserInteraction.count", 1 do
      post "/api/v1/verses/#{@verse1.id}/toggle_like", headers: auth_headers(@token)
    end

    assert_response :success
    json_response = JSON.parse(response.body)
    assert_equal true, json_response["liked"]
    assert_equal "Verse liked", json_response["message"]
  end

  test "should require authentication for toggle_like" do
    post "/api/v1/verses/#{@verse1.id}/toggle_like"

    assert_response :unauthorized
  end

  test "should return not found for toggle_like with non-existent verse" do
    post "/api/v1/verses/99999/toggle_like", headers: auth_headers(@token)

    assert_response :not_found
  end

  test "should return pagination metadata in search results" do
    get "/api/v1/verses/search", headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    pagination = json_response["pagination"]
    assert pagination["page"].present?
    assert pagination["per_page"].present?
    assert pagination["pages"].present?
    assert pagination["count"].present?
    assert_nil pagination["prev"]
    assert pagination["next"].present? if pagination["pages"].to_i > 1
  end

  test "should return empty array when no verses match search_by_address query" do
    get "/api/v1/verses/search_by_address", params: { q: "nonexistent12345" }, headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert_equal [], json_response["verses"]
  end

  test "should return empty array for liked when user has no liked verses" do
    get "/api/v1/liked", headers: auth_headers(@token)

    assert_response :success
    json_response = JSON.parse(response.body)
    assert_equal [], json_response["verses"]
  end

  test "records shown verses after authenticated search" do
    assert_difference -> { UserShownVerse.where(user: @user).count }, 3 do
      get "/api/v1/verses/search", headers: auth_headers(@token)
      assert_response :success
    end
  end

  test "excludes already-shown verses on subsequent search requests" do
    get "/api/v1/verses/search", params: { per: 1 }, headers: auth_headers(@token)
    assert_response :success
    first_id = JSON.parse(response.body)["verses"].first["id"]

    get "/api/v1/verses/search", params: { per: 1 }, headers: auth_headers(@token)
    assert_response :success
    second_id = JSON.parse(response.body)["verses"].first["id"]

    assert_not_equal first_id, second_id
  end

  test "does not clear shown verses when category matches no verses" do
    UserShownVerse.create!(user: @user, verse: @verse1)

    get "/api/v1/verses/search", params: { category: "nobody" }, headers: auth_headers(@token)
    assert_response :success
    assert_equal [], JSON.parse(response.body)["verses"]
    assert UserShownVerse.exists?(user: @user, verse: @verse1)
  end

  test "clears shown history and returns verses when pool is exhausted" do
    Verse.find_each do |verse|
      UserShownVerse.create!(user: @user, verse: verse)
    end

    get "/api/v1/verses/search", params: { per: 10 }, headers: auth_headers(@token)
    assert_response :success
    json_response = JSON.parse(response.body)
    assert json_response["verses"].present?
    assert_operator UserShownVerse.where(user: @user).count, :>, 0
  end
end

