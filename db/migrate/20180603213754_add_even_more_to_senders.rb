class AddEvenMoreToSenders < ActiveRecord::Migration[5.1]
  def change

  	add_column :senders, :reciever_l_name, :string

  end
end
