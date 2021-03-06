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

ActiveRecord::Schema.define(version: 20151208125514) do

  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.string "cardnumber"
  end

  create_table "categories", force: :cascade do |t|
    t.string  "name"
    t.string  "status"
    t.boolean "is_active"
    t.integer "salire"
  end

  create_table "clients", force: :cascade do |t|
    t.string  "name"
    t.string  "status"
    t.boolean "is_active"
    t.integer "salire"
  end

  create_table "keywords", force: :cascade do |t|
    t.string   "keyword"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: :cascade do |t|
    t.string  "name"
    t.string  "status"
    t.boolean "is_active"
    t.integer "salire"
  end

  create_table "micro_posts", force: :cascade do |t|
    t.string  "name"
    t.string  "status"
    t.boolean "is_active"
    t.integer "salire"
  end

  create_table "posts", force: :cascade do |t|
    t.string  "name"
    t.string  "status"
    t.boolean "is_active"
    t.integer "salire"
  end

  create_table "products", force: :cascade do |t|
    t.string  "name"
    t.string  "status"
    t.boolean "is_active"
    t.integer "salire"
  end

  create_table "types", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.string  "status"
    t.boolean "is_active"
    t.integer "salire"
  end

end
