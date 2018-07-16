class FixTypoForCustomerNumberActual < ActiveRecord::Migration[5.1]
  def change
  	remove_column :senders, :customer_numer, :string, null: false, default: '', index: true
  	add_column :senders, :customer_number, :string
  end
end
