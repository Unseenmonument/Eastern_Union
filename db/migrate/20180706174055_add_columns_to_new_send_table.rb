class AddColumnsToNewSendTable < ActiveRecord::Migration[5.1]
  def change

  	add_column :senders, :f_name, :string
  	
  	add_column :senders, :m_name, :string
  	
  	add_column :senders, :l_name, :string
  	
  	add_column :senders, :pat_name, :string
  	
  	add_column :senders, :mat_name, :string
  	
  	add_column :senders, :address, :string
  	
  	add_column :senders, :address_zip, :string
  	
  	add_column :senders, :address_state, :string
  	
  	add_column :senders, :phone_number, :string
  	
  	add_column :senders, :email, :string
  	
  	add_column :senders, :recipients, :text
  	
  	add_column :senders, :id_type, :string
  	
  	add_column :senders, :lic_number, :string
  	
  	add_column :senders, :pass_number, :string
  	
  	add_column :senders, :gov_number, :string
  	
  	add_column :senders, :id_dob, :date
  	
  	add_column :senders, :lic_state, :string
  	
  	add_column :senders, :pass_nation, :string
  	
  	add_column :senders, :gov_nation, :string
  	
  	add_column :senders, :send_amount, :string
  	
  	add_column :senders, :final_amount, :string
  	
  	add_column :senders, :sendforself, :boolean
  	
  	add_column :senders, :payout_nation, :string
  	
  	add_column :senders, :payout_state, :string
  	
  	add_column :senders, :reciever_f_name, :string
  	
  	add_column :senders, :reciever_m_name, :string
  	
  	add_column :senders, :reciever_l_name, :string
  	
  	add_column :senders, :reciever_pat_name, :string
  	
  	add_column :senders, :reciever_mat_name, :string
  	
  	add_column :senders, :test_question, :string
  	
  	add_column :senders, :test_answer, :string
  	
  	add_column :senders, :customer_numer, :string
  	
  	add_column :senders, :mtcn, :integer
  	
  	add_column :senders, :send_date, :date
  	
  	add_column :senders, :payout_date, :date
  	
  	add_column :senders, :reciever_country, :string
  	
  end
end
