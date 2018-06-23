class AddIntegersToCountries < ActiveRecord::Migration[5.1]
  def change
  	remove_column :countries, :mim_cost, :float
  	remove_column :countries, :nextday_cost, :float
  	remove_column :countries, :exchange_rate, :float
  	add_column :countries, :mim_tier1_cost, :decimal
  	add_column :countries, :mim_tier1_limit, :decimal
  	add_column :countries, :mim_tier2_cost, :decimal
  	add_column :countries, :mim_tier2_limit, :decimal
  	add_column :countries, :mim_tier3_cost, :decimal
  	add_column :countries, :mim_tier3_limit, :decimal
  	add_column :countries, :mim_tier4_cost, :decimal
  	add_column :countries, :mim_tier4_limit, :decimal
  	add_column :countries, :nextday_tier1_cost, :decimal
  	add_column :countries, :nextday_tier1_limit, :decimal
  	add_column :countries, :nextday_tier2_cost, :decimal
  	add_column :countries, :nextday_tier2_limit, :decimal
  	add_column :countries, :nextday_tier3_cost, :decimal
  	add_column :countries, :nextday_tier3_limit, :decimal
  	add_column :countries, :nextday_tier4_cost, :decimal
  	add_column :countries, :nextday_tier4_limit, :decimal
  	add_column :countries, :exchange_rate, :decimal
  end
end
