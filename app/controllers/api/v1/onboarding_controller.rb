# frozen_string_literal: true

class Api::V1::OnboardingController < ApplicationController
  before_action :set_onboarding

  # GET /api/v1/onboarding
  def show
    render json: { onboarding: { id: @onboarding.id, completed_at: @onboarding.completed_at } }, status: :ok
  end

  # GET /api/v1/onboarding/completed_onboarding
  def completed_onboarding
    @onboarding.update!(completed_at: Time.current)
    render json: { onboarding: { id: @onboarding.id, completed_at: @onboarding.completed_at } }, status: :ok
  end

  private

  def set_onboarding
    return render json: { error: "Unauthorized" }, status: :unauthorized unless current_user

    @onboarding = current_user.onboarding
    return render json: { error: "Onboarding not found" }, status: :not_found unless @onboarding
  end
end
