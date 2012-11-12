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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121112161402) do

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "publisher"
    t.integer  "total_page"
    t.string   "topic"
    t.text     "brief_content"
    t.integer  "type"
    t.date     "date_of_storing"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "transactions", :force => true do |t|
    t.integer  "book_id"
    t.integer  "user_id"
    t.date     "day_borrow"
    t.string   "day_return"
    t.string   "date"
    t.integer  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usergroups", :force => true do |t|
    t.string   "group_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "nickname"
    t.string   "hashed_password"
    t.string   "email"
    t.date     "register_date"
    t.date     "end_date"
    t.integer  "group"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
