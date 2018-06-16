class CreateSMoneys < ActiveRecord::Migration[5.1]
  def change
    create_table :s_moneys do |t|

      t.timestamps
    end
  end
end
