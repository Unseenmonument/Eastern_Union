class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :mtcn
      t.string :sender_f_name
      t.string :sender_m_name
      t.string :sender_l_name
      t.string :reciever_f_name
      t.string :reciever_m_name
      t.string :reciever_l_name
      t.string :rec_address
      t.string :rec_phone
      t.string :rec_zip
      t.string :rec_state
      t.string :rec_id_type
      t.string :rec_pass_num
      t.string :rec_pass_dob
      t.string :rec_pas_country
      t.string :rec_lic_num
      t.string :rec_lic_state
      t.string :rec_lic_dob
      t.string :rec_govid_num
      t.string :rec_govid_country
      t.string :rec_govid_dob
      t.string :reciever_city
      t.string :test_quest_answer
      t.boolean :second_id
      t.string :second_id_type
      t.string :idtwo_pass_country
      t.string :idtwo_pass_num
      t.string :idtwo_pass_dob
      t.string :idtwo_lic_state
      t.string :idtwo_lic_dob_
      t.string :idtwo_lic_num
      t.string :idtwo_gov_country
      t.string :idtwo_gov_num
      t.string :idtwo_gov_dob

      t.timestamps
    end
  end
end
