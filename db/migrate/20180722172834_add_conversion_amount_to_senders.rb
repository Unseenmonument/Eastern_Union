class AddConversionAmountToSenders < ActiveRecord::Migration[5.1]
  def change
  	add_column :senders, :conversion_amount, :string
  end
end
