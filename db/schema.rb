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

ActiveRecord::Schema.define(:version => 20120505115018) do

  create_table "albums", :force => true do |t|
    t.integer  "band_id"
    t.string   "title"
    t.text     "explanation"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "band_masters", :force => true do |t|
    t.integer  "profile_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "band_members", :force => true do |t|
    t.integer  "user_id"
    t.integer  "profile_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "band_id"
  end

  create_table "bands", :force => true do |t|
    t.string   "name"
    t.text     "explanation"
    t.string   "type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "band_master_id"
  end

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.text     "contents"
    t.integer  "band_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bulettin_boards", :force => true do |t|
    t.string   "name"
    t.integer  "band_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "member_bulettin_borads", :force => true do |t|
    t.string   "name"
    t.integer  "band_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "member_posts", :force => true do |t|
    t.string   "title"
    t.text     "contents"
    t.integer  "memeber_bulletin_board_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "photos", :force => true do |t|
    t.string   "title"
    t.string   "explanation"
    t.string   "file_name"
    t.integer  "album_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "contents"
    t.integer  "bulettin_board_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "nick_name"
    t.string   "gender"
    t.date     "birthday"
    t.text     "introduction"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "prof_type"
    t.integer  "prof_id"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "e_mail"
    t.string   "status"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.datetime "register_time"
  end

end
