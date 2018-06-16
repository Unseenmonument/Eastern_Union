class AddColumnsToSenders < ActiveRecord::Migration[5.1]
  def change
  	remove_column :senders, :pass_country, :string, null: false, default: '', index: true
  	remove_column :senders, :gov_country, :string, null: false, default: '', index: true
  	add_column :senders, :pass_nation, :string
  	add_column :senders, :gov_nation, :string
  end
end
