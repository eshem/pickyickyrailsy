class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.string :selection
      t.integer :week
      t.integer :user_id
      t.integer :game_id
      t.boolean :winner

      t.timestamps
    end
  end
end
