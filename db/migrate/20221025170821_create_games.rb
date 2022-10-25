class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :location
      t.references :league_session
      t.datetime :game_date_time
      t.references :home_team
      t.references :away_team
      t.integer :game_type_id
      t.integer :home_team_score
      t.integer :away_team_score
      t.boolean :notification_sent, default: false
      t.boolean :captain_notification_sent, default: false

      t.timestamps
    end
  end
end
