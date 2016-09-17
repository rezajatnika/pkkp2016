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

ActiveRecord::Schema.define(version: 20160917233117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departements", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "majors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participants", force: :cascade do |t|
    t.string   "name"
    t.string   "nim"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.date     "birth"
    t.integer  "gender"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "photo"
    t.integer  "departement_id"
    t.string   "birth_place"
    t.string   "no_group"
  end

  add_index "participants", ["departement_id"], name: "index_participants_on_departement_id", using: :btree
  add_index "participants", ["email"], name: "index_participants_on_email", using: :btree
  add_index "participants", ["nim"], name: "index_participants_on_nim", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "nim"
    t.string   "email"
    t.string   "phone"
    t.date     "birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "major_id"
    t.string   "address"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["nim"], name: "index_users_on_nim", using: :btree

  add_foreign_key "participants", "departements"
  add_foreign_key "users", "majors"
end
