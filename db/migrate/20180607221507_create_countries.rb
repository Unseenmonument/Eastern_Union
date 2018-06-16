class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.float :mim_cost
      t.float :nextday_cost
      t.float :exchange_rate
      t.boolean :require_id
      t.boolean :require_testq
      t.boolean :communist_q
      t.boolean :req_twoid

      t.timestamps
    end
  end
end
