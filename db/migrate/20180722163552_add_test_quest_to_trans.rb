class AddTestQuestToTrans < ActiveRecord::Migration[5.1]
  def change
  	add_column :transactions, :test_question, :string
  end
end
