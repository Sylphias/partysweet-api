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

ActiveRecord::Schema.define(version: 20141206221307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "invitations", force: true do |t|
    t.boolean  "paid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "host"
    t.integer  "party_id"
    t.integer  "user_id"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parties", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "date"
    t.string   "time"
    t.string   "location"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image"
  end

  create_table "resources", force: true do |t|
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "party_id"
    t.integer  "item_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image"
  end

end
