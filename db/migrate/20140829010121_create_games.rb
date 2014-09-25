class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :team1
      t.string :team2
      t.integer :spread
      t.integer :week
      t.string :winning_team

      t.timestamps
    end
  end
end
