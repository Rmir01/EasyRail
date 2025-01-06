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

ActiveRecord::Schema[8.0].define(version: 2025_01_06_122320) do
  create_table "trains", force: :cascade do |t|
    t.string "f0"
    t.string "f1"
    t.string "f2"
    t.string "f3"
    t.string "f4"
    t.string "f5"
    t.string "hf0"
    t.string "hf1"
    t.string "hf2"
    t.string "hf3"
    t.string "hf4"
    t.string "hf5"
  end

  create_table "travels", primary_key: ["cod", "part", "dest"], force: :cascade do |t|
    t.integer "cod"
    t.string "part"
    t.string "dest"
    t.string "hpar"
    t.string "harr"
    t.integer "pe"
    t.integer "pp"
    t.check_constraint "pe > 0", name: "min_price_check"
    t.check_constraint "pp = pe + 10", name: "p_e_price_check"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "travels", "trains", column: "cod"
end
