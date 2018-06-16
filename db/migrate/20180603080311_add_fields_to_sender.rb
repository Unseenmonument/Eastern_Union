class AddFieldsToSender < ActiveRecord::Migration[5.1]
  def change
  	remove_column :senders, :familyname, :boolean
  	add_column :senders, :send_amount, :string
  	add_column :senders, :final_amount, :string
  	add_column :senders, :sendforself, :boolean
  	add_column :senders, :payout_nation, :string
  	add_column :senders, :payout_state, :string
  	add_column :senders, :reciever_f_name, :string
  	add_column :senders, :reciever_m_name, :string
  	add_column :senders, :reciever_pat_name, :string
  	add_column :senders, :reciever_mat_name, :string
  	add_column :senders, :test_question, :string
  	add_column :senders, :test_answer, :string
  	add_column :senders, :customer_number, :string
  	add_column :senders, :mtcn, :integer
  	add_column :senders, :send_date, :date
  	add_column :senders, :payout_date, :date


  end
end
