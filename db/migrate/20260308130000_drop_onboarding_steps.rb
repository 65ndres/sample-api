class DropOnboardingSteps < ActiveRecord::Migration[7.2]
  def change
    drop_table :onboarding_steps
  end
end
