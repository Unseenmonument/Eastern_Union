class CreateSenders < ActiveRecord::Migration[5.1]
  def change
    create_table :senders do |t|
      t.string :f_name
      t.string :m_name
      t.boolean :familyname
      t.string :l_name
      t.string :pat_name
      t.string :mat_name
      t.string :address
      t.integer :address_zip
      t.string :address_state
      t.string :phone_number
      t.string :email
      t.text :recipients
      t.string :id_type
      t.string :lic_number
      t.string :pass_number
      t.string :gov_number
      t.date :id_dob
      t.string :lic_state
      t.string :pass_country
      t.string :gov_country

      t.timestamps
    end
  end
end
