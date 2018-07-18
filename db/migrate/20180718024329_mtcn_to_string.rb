class MtcnToString < ActiveRecord::Migration[5.1]
  def change
  	remove_column :senders, :mtcn, :integer, null: false, default: '', index: true
  	add_column :senders, :mtcn, :string
  end
end
