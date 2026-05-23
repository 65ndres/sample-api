class Subscription < ApplicationRecord
  belongs_to :user

  # Explicit attribute types for enums (required in Rails 7.2+ when schema may not be loaded)
  attribute :subscription_type, :integer
  attribute :processor, :integer

  enum subscription_type: {
    basic: 0,
    pro: 1,
  }

  enum processor: {
    stripe: 0,
    apple: 1,
    google: 2
  }

  enum status: {
    active: 0,
    expired: 1,
    cancelled: 2
  }

  # Scopes
  scope :active_subscriptions, -> { where(status: :active) }
  scope :inactive_subscriptions, -> { where(status: :expired) }

  # after_create :deactivate_other_subscriptions_for_user, if: :active?
  # after_update :destroy_token, if: :expired?
  # after_update :destroy_token, if: :cancelled?

  private

  def deactivate_other_subscriptions_for_user
    user.subscriptions.where.not(id: id).update_all(status: :expired)
  end

  def destroy_token
    user.token.destroy
  end

  def destroy_token_if_expired
    user.token.destroy if expired?
  end

  def destroy_token_if_cancelled
    user.token.destroy if cancelled?
  end
end

