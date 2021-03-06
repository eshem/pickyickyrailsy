class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :team_name
      t.string :email
      t.string :password_digest
      t.integer :tier
      t.float :win_pct
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
