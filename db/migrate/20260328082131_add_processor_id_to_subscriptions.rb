class AddProcessorIdToSubscriptions < ActiveRecord::Migration[7.2]
  def change
    add_column :subscriptions, :processor_id, :string
  end
end
