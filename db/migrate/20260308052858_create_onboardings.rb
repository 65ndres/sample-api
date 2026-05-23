class CreateOnboardings < ActiveRecord::Migration[7.2]
  def change
    create_table :onboardings do |t|
      t.datetime :completed_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
