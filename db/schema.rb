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

ActiveRecord::Schema.define(:version => 20130316231507) do

  create_table "course_registrations", :force => true do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.boolean  "feedback_form_completed", :default => false
    t.boolean  "certificate_sent",        :default => false
    t.boolean  "paid",                    :default => false
  end

  add_index "course_registrations", ["course_id"], :name => "index_course_registrations_on_course_id"
  add_index "course_registrations", ["user_id"], :name => "index_course_registrations_on_user_id"

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "venue"
    t.text     "description"
    t.decimal  "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "registrations", :force => true do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.boolean  "feedback_form_completed", :default => false
    t.boolean  "certificate_sent",        :default => false
    t.boolean  "paid",                    :default => false
    t.boolean  "waiting_list",            :default => false
  end

  add_index "registrations", ["course_id"], :name => "index_registrations_on_course_id"
  add_index "registrations", ["user_id"], :name => "index_registrations_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "mobile"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
