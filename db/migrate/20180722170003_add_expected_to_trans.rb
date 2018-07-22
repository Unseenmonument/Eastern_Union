class AddExpectedToTrans < ActiveRecord::Migration[5.1]
  def change
  	add_column :transactions, :expected_f_name, :string
  	add_column :transactions, :expected_m_name, :string
  	add_column :transactions, :expected_l_name, :string
  	add_column :transactions, :payout_amount, :string

  end
end
