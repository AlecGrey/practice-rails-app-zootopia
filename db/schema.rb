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

ActiveRecord::Schema.define(version: 2020_11_04_012243) do

  create_table "animals", force: :cascade do |t|
    t.string "species"
    t.string "classification"
    t.boolean "loves_mom"
    t.string "diet"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exhibits", force: :cascade do |t|
    t.string "biome"
    t.integer "quantity_of_animal"
    t.integer "animal_id", null: false
    t.integer "zoo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["animal_id"], name: "index_exhibits_on_animal_id"
    t.index ["zoo_id"], name: "index_exhibits_on_zoo_id"
  end

  create_table "zoos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "exhibits", "animals"
  add_foreign_key "exhibits", "zoos"
end
