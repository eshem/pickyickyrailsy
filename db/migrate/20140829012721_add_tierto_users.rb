class AddTiertoUsers < ActiveRecord::Migration
  def change
  	add_column :users, :tier, :integer 
  end
end
