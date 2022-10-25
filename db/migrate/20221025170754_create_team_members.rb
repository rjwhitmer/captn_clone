class CreateTeamMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :team_members do |t|
      t.references :team, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :role_id
      t.integer :position_id
      t.string :email
      t.string :phone_number
      t.boolean :has_paid

      t.timestamps
    end
  end
end
