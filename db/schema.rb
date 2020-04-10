# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_10_222015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chores", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "location_id", null: false
    t.bigint "user_id", null: false
    t.string "day"
    t.string "icon"
    t.boolean "completed"
    t.index ["location_id"], name: "index_chores_on_location_id"
    t.index ["user_id"], name: "index_chores_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.integer "creator"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.bigint "location_id", null: false
    t.index ["location_id"], name: "index_users_on_location_id"
  end

  add_foreign_key "chores", "locations"
  add_foreign_key "chores", "users"
  add_foreign_key "users", "locations"
end
