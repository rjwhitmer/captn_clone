class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :location
      t.string :sport
      t.datetime :game_date_time
      t.integer :home_team_score
      t.integer :away_team_score

      t.timestamps
    end
  end
end
