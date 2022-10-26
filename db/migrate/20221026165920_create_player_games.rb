class CreatePlayerGames < ActiveRecord::Migration[7.0]
  def change
    create_table :player_games do |t|
      t.references :user
      t.references :team
      t.references :game

      t.timestamps
    end
  end
end
