class AddActiveToSubscriptions < ActiveRecord::Migration[7.2]
  def change
    add_column :subscriptions, :active, :boolean, default: false
  end
end
