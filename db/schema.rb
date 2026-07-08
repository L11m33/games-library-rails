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

ActiveRecord::Schema[8.1].define(version: 2025_12_30_112906) do
  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.string "genre"
    t.string "title"
    t.datetime "updated_at", null: false
    t.integer "year"
  end

  create_table "rentals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "game_id", null: false
    t.date "rented_on"
    t.date "returned_on"
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["game_id"], name: "index_rentals_on_game_id"
    t.index ["user_id"], name: "index_rentals_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "comment"
    t.datetime "created_at", null: false
    t.integer "game_id", null: false
    t.integer "rating"
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["game_id"], name: "index_reviews_on_game_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "rentals", "games"
  add_foreign_key "rentals", "users"
  add_foreign_key "reviews", "games"
  add_foreign_key "reviews", "users"
end
