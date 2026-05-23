class AddExpirationDateToSubscriptions < ActiveRecord::Migration[7.2]
  def change
    add_column :subscriptions, :expiration_date, :date
    remove_column :subscriptions, :processor_id
  end
end
