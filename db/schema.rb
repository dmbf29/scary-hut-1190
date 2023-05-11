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

ActiveRecord::Schema[7.0].define(version: 2023_05_11_081010) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "curses", force: :cascade do |t|
    t.bigint "power_id", null: false
    t.bigint "monster_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monster_id"], name: "index_curses_on_monster_id"
    t.index ["power_id"], name: "index_curses_on_power_id"
  end

  create_table "haunted_houses", force: :cascade do |t|
    t.string "name"
    t.string "banner_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.bigint "haunted_house_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["haunted_house_id"], name: "index_monsters_on_haunted_house_id"
  end

  create_table "powers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "curses", "monsters"
  add_foreign_key "curses", "powers"
  add_foreign_key "monsters", "haunted_houses"
end
