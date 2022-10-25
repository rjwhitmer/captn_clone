# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_25_170821) do
  create_table "games", force: :cascade do |t|
    t.string "location"
    t.string "sport"
    t.datetime "game_date_time"
    t.integer "home_team_score"
    t.integer "away_team_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "league_sessions", force: :cascade do |t|
    t.integer "location_id"
    t.integer "league_id"
    t.string "competition_level"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_league_sessions_on_league_id"
    t.index ["location_id"], name: "index_league_sessions_on_location_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "competition_level"
    t.integer "coed"
    t.integer "minimum_age"
    t.integer "maximum_age"
    t.string "alert"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "zip"
    t.string "alert"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer "league_id"
    t.integer "user_id"
    t.string "competition_level"
    t.integer "coed"
    t.string "name"
    t.string "team_color"
    t.boolean "track_payments"
    t.boolean "auto_search"
    t.integer "search_timer"
    t.integer "degrees_of_separation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_teams_on_league_id"
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.integer "gender"
    t.date "birthday"
    t.integer "experience"
    t.integer "rating"
    t.string "phone_number"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_users_on_team_id"
  end

  add_foreign_key "teams", "leagues"
  add_foreign_key "teams", "users"
end
