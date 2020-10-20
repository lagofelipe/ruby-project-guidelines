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

ActiveRecord::Schema.define(version: 3) do

  create_table "airports", force: :cascade do |t|
    t.string "iata"
    t.string "name"
    t.string "city"
    t.string "country"
  end

  create_table "frequent_flyers", force: :cascade do |t|
    t.string "name"
    t.string "home_airport"
    t.string "medallion"
  end

  create_table "trips", force: :cascade do |t|
    t.string "date"
    t.string "confirmation"
    t.integer "frequent_flyer_id"
    t.integer "airport_id"
  end

end
