# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130908134246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bars", force: true do |t|
    t.string   "name"
    t.decimal  "lat"
    t.decimal  "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", force: true do |t|
    t.string  "name"
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "reports", force: true do |t|
    t.integer "place_id"
    t.integer "temperature_id"
    t.integer "brand_id"
    t.integer "recipient_id"
  end

  add_index "reports", ["brand_id"], name: "index_reports_on_brand_id", using: :btree
  add_index "reports", ["place_id"], name: "index_reports_on_place_id", using: :btree
  add_index "reports", ["recipient_id"], name: "index_reports_on_recipient_id", using: :btree
  add_index "reports", ["temperature_id"], name: "index_reports_on_temperature_id", using: :btree

end
