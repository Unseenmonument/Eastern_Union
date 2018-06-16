class AddRecieverCountryToSenders < ActiveRecord::Migration[5.1]
  def change
  	add_column :senders, :reciever_country, :string
  end
end
