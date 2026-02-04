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

ActiveRecord::Schema[8.1].define(version: 2026_02_04_031232) do
  create_table "business_hours", force: :cascade do |t|
    t.string "closes_at"
    t.datetime "created_at", null: false
    t.string "day"
    t.boolean "is_closed"
    t.string "opens_at"
    t.integer "position"
    t.datetime "updated_at", null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.text "description_en"
    t.text "description_fr"
    t.string "image"
    t.integer "position"
    t.decimal "price_large"
    t.decimal "price_small"
    t.string "title_en"
    t.string "title_fr"
    t.datetime "updated_at", null: false
  end
end
