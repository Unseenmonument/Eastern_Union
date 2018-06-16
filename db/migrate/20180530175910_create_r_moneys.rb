class CreateRMoneys < ActiveRecord::Migration[5.1]
  def change
    create_table :r_moneys do |t|

      t.timestamps
    end
  end
end
