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

ActiveRecord::Schema[8.0].define(version: 2025_01_02_182324) do
  create_table "tratta", primary_key: ["cod", "part", "dest"], force: :cascade do |t|
    t.integer "cod"
    t.string "part"
    t.string "dest"
    t.string "hpar"
    t.string "harr"
    t.integer "pe"
    t.integer "pp"
    t.check_constraint "pe > 0", name: "minimum_price_check"
    t.check_constraint "pp = pe + 10", name: "price_check"
  end

  create_table "trenos", force: :cascade do |t|
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

  create_table "utente", primary_key: "email", id: :string, force: :cascade do |t|
    t.string "password"
    t.string "nome"
    t.string "cognome"
  end

  add_foreign_key "tratta", "trenos", column: "cod"
end
