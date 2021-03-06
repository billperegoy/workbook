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

ActiveRecord::Schema.define(version: 20150104203857) do

  create_table "answers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value"
    t.integer  "question_id"
    t.integer  "user_id"
  end

  create_table "books", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "tile_image"
    t.text     "description"
    t.float    "price"
    t.string   "cover_image"
  end

  create_table "books_users", id: false, force: true do |t|
    t.integer "book_id"
    t.integer "user_id"
  end

  create_table "pages", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.integer  "book_id"
    t.integer  "number"
  end

  create_table "questions", force: true do |t|
    t.string   "title"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "format"
  end

  create_table "slider_questions", force: true do |t|
    t.string   "left_adjective"
    t.string   "right_adjective"
    t.integer  "steps"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "email"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
