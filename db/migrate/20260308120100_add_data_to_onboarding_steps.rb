class AddDataToOnboardingSteps < ActiveRecord::Migration[7.2]
  def change
    add_column :onboarding_steps, :data, :jsonb, default: {}
  end
end
