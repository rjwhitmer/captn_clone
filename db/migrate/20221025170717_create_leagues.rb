class CreateLeagues < ActiveRecord::Migration[7.0]
  def change
    create_table :leagues do |t|
      t.string :competition_level
      t.integer :coed
      t.integer :minimum_age
      t.integer :maximum_age
      t.string :alert

      t.timestamps
    end
  end
end
