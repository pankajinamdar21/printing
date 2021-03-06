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

ActiveRecord::Schema.define(:version => 20130905074450) do

  create_table "addresses", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "address_city"
    t.string   "address_zip"
    t.string   "address_state"
    t.string   "address_country"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "job_id"
  end

  create_table "items", :force => true do |t|
    t.integer  "user_id"
    t.integer  "job_id"
    t.integer  "double_sided"
    t.integer  "quantity"
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "job_addresses", :force => true do |t|
    t.integer  "job_id"
    t.integer  "address_id"
    t.datetime "created_at"
  end

  create_table "jobs", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.float    "price"
    t.integer  "quantity"
    t.string   "status"
    t.string   "tracking"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "packagings", :force => true do |t|
    t.integer  "item_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "settings", :force => true do |t|
    t.integer  "item_id"
    t.string   "description"
    t.string   "paper"
    t.float    "width"
    t.float    "length"
    t.boolean  "color"
    t.string   "notes"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "templates", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "url"
    t.integer  "pages"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "types", :force => true do |t|
    t.integer  "packaging_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "token"
    t.datetime "token_expires_at"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
