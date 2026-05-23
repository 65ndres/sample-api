class CreateSubscriptions < ActiveRecord::Migration[7.2]
  def change
    create_table :subscriptions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :plan, foreign_key: true
      t.integer :processor, null: false
      t.decimal :amount, precision: 10, scale: 2
      t.string :currency, default: "usd"
      t.integer :status, default: 0, null: false
      t.datetime :current_period_start
      t.datetime :current_period_end
      t.string :processor_id
      t.timestamps
    end

    add_index :subscriptions, :user_id,
              unique: true,
              where: "status = 0",
              name: "index_subscriptions_on_user_id_active_unique"
  end
end
