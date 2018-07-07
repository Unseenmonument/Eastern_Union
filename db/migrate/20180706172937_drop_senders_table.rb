class DropSendersTable < ActiveRecord::Migration[5.1]

  	def up
		drop_table :senders
	end

	def down
		raise ActiveRecord::IrreversibleMigration
	end
end
