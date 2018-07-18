class AddCustomerBooleanToSender < ActiveRecord::Migration[5.1]
  def change
  	remove_column :senders, :sendforself, :boolean, null: false, default: '', index: true
  	add_column :senders, :create_account, :boolean

  end
end
