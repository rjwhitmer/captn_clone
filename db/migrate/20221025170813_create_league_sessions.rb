class CreateLeagueSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :league_sessions do |t|
      t.references :location
      t.references :league
      t.string :competition_level
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
