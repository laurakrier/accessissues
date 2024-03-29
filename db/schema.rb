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

ActiveRecord::Schema.define(version: 20141020223855) do

  create_table "issues", force: true do |t|
    t.string   "who_experienced"
    t.string   "patron_verify"
    t.string   "location"
    t.string   "os"
    t.string   "browser"
    t.string   "opac_error"
    t.string   "name_of_db"
    t.string   "source"
    t.text     "description"
    t.string   "patron_name"
    t.string   "patron_email"
    t.string   "name"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
