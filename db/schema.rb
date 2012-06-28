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

ActiveRecord::Schema.define(:version => 20120525013438) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "bent@cloudkickr.com", :null => false
    t.string   "encrypted_password",     :default => "Ventura84",           :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "agencies", :force => true do |t|
    t.string   "agency_id"
    t.string   "agency_name"
    t.string   "agency_url"
    t.string   "agency_timezone"
    t.string   "agency_lang"
    t.string   "agency_phone"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "calendar_dates", :force => true do |t|
    t.string   "service_id"
    t.date     "date"
    t.decimal  "exception_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "indices", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "news", :force => true do |t|
    t.date     "date"
    t.text     "title"
    t.text     "subtitle"
    t.text     "body"
    t.string   "show_on_home"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.string   "coding"
    t.string   "icd_code"
    t.string   "company"
    t.text     "description"
    t.text     "features_description"
    t.string   "sold_out"
    t.string   "active"
    t.string   "discontinued"
    t.text     "discontinued_options"
    t.string   "custom_width_max"
    t.string   "custom_length_max"
    t.string   "video"
    t.string   "video_width"
    t.string   "video_height"
    t.string   "image_list"
    t.string   "product_video"
    t.string   "product_video_still"
    t.string   "image_1"
    t.string   "image_1_title"
    t.string   "image_1_description"
    t.string   "image_2"
    t.string   "image_2_title"
    t.string   "image_2_description"
    t.string   "image_3"
    t.string   "image_3_title"
    t.string   "image_3_description"
    t.string   "image_4"
    t.string   "image_4_title"
    t.string   "image_4_description"
    t.string   "image_5"
    t.string   "image_5_title"
    t.string   "image_5_description"
    t.string   "image_6"
    t.string   "image_6_title"
    t.string   "image_6_description"
    t.text     "page_title"
    t.text     "page_description"
    t.text     "page_keywords"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "routes", :force => true do |t|
    t.decimal  "route_id"
    t.string   "route_long_name"
    t.decimal  "route_type"
    t.string   "route_color"
    t.string   "route_text_color"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "static_pages", :force => true do |t|
    t.string   "home"
    t.string   "my_account"
    t.string   "medicare"
    t.string   "where_to_find_us"
    t.string   "downloads_and_forms"
    t.string   "support"
    t.string   "diagnosis_search"
    t.string   "news"
    t.string   "active_rehab"
    t.string   "long_term_care"
    t.string   "premier_comfort"
    t.string   "quick_order"
    t.string   "our_quality"
    t.string   "shopping_cart"
    t.string   "custom_designs"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "stop_times", :force => true do |t|
    t.string   "trip_id"
    t.time     "arrival_time"
    t.time     "departure_time"
    t.decimal  "stop_id"
    t.decimal  "stop_sequence"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "stops", :force => true do |t|
    t.decimal  "stop_id"
    t.string   "stop_name"
    t.float    "stop_lat"
    t.float    "stop_lon"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "trips", :force => true do |t|
    t.decimal  "route_id"
    t.string   "service_id"
    t.string   "trip_id"
    t.string   "trip_headsign"
    t.string   "trip_short_name"
    t.decimal  "direction_id"
    t.decimal  "shape_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
