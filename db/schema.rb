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

ActiveRecord::Schema.define(version: 20130725230646) do

  create_table "band_membership", force: true do |t|
    t.date     "start"
    t.date     "left"
    t.integer  "musician_id"
    t.integer  "band_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "band_membership", ["band_id"], name: "index_band_membership_on_band_id"
  add_index "band_membership", ["musician_id"], name: "index_band_membership_on_musician_id"

  create_table "bands", force: true do |t|
    t.string   "bandname"
    t.string   "genre"
    t.text     "about"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "musicians", force: true do |t|
    t.string   "name"
    t.string   "instrument"
    t.string   "genre"
    t.text     "about"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
