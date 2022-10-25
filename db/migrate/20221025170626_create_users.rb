class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.date :birthday
      t.integer :experience
      t.integer :rating
      t.string :phone_number

      t.timestamps
    end
  end
end
