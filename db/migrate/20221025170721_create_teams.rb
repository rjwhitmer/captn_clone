class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.references :league, foreign_key: true
      t.references :user, foreign_key: true
      t.string :competition_level
      t.integer :coed
      t.string :name
      t.string :team_color
      t.boolean :track_payments
      t.boolean :auto_search
      t.integer :search_timer
      t.integer :degrees_of_separation

      t.timestamps
    end
  end
end
