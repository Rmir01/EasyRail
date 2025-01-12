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

ActiveRecord::Schema[8.0].define(version: 2025_01_12_083344) do
  create_table "searches", force: :cascade do |t|
    t.string "departure_station", null: false
    t.string "arrival_station", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
  end

  create_table "tickets", primary_key: "pnr", id: :string, force: :cascade do |t|
    t.string "email", null: false
    t.integer "cod", null: false
    t.string "part", null: false
    t.string "dest", null: false
    t.time "hpar", null: false
    t.time "harr", null: false
    t.date "date", null: false
    t.integer "pass", null: false
    t.integer "price", null: false
  end

  create_table "trains", force: :cascade do |t|
    t.string "f0", null: false
    t.string "f1"
    t.string "f2"
    t.string "f3"
    t.string "f4"
    t.string "f5", null: false
    t.string "hf0", null: false
    t.string "hf1"
    t.string "hf2"
    t.string "hf3"
    t.string "hf4"
    t.string "hf5", null: false
  end

  create_table "travels", primary_key: ["cod", "part", "dest"], force: :cascade do |t|
    t.integer "cod", null: false
    t.string "part", null: false
    t.string "dest", null: false
    t.string "hpar", null: false
    t.string "harr", null: false
    t.integer "pe", null: false
    t.integer "pp", null: false
    t.check_constraint "pe > 0", name: "min_price_check"
    t.check_constraint "pp = pe + 10", name: "p_e_price_check"
  end

  create_table "users", primary_key: "email", id: :string, default: "", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "surname", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "provider", default: "", null: false
    t.string "uid", default: "", null: false
    t.boolean "admin", default: false, null: false
  end

  add_foreign_key "searches", "users", column: "email", primary_key: "email"
  add_foreign_key "tickets", "travels", column: ["cod", "part", "dest"], primary_key: ["cod", "part", "dest"]
  add_foreign_key "tickets", "users", column: "email", primary_key: "email"
  add_foreign_key "travels", "trains", column: "cod"
end
