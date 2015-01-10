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

ActiveRecord::Schema.define(version: 20150109043211) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amenities", force: :cascade do |t|
    t.string   "title"
    t.integer  "neighborhood_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "features", force: :cascade do |t|
    t.string   "title"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "neighborhood_id"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "description"
    t.string   "title"
    t.integer  "sq_feet"
    t.integer  "bath"
    t.integer  "bed"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string   "title"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.boolean  "image_processed"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "location_id"
    t.integer  "desirability",    default: 0
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "phone"
    t.string   "email_address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "quote_requests", force: :cascade do |t|
    t.string   "full_name"
    t.string   "email_address"
    t.string   "monthly_rent"
    t.string   "beds"
    t.string   "baths"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "more_info"
  end

end
