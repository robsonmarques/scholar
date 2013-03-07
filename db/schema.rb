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

ActiveRecord::Schema.define(:version => 20130307033616) do

  create_table "klasses", :force => true do |t|
    t.string   "name"
    t.string   "shift"
    t.string   "term"
    t.string   "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "name"
    t.string   "age"
    t.string   "gender"
    t.string   "email"
    t.integer  "klass_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "students", ["klass_id"], :name => "index_students_on_klass_id"

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.string   "field"
    t.integer  "klass_id"
    t.integer  "teacher_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "subjects", ["klass_id"], :name => "index_subjects_on_klass_id"
  add_index "subjects", ["teacher_id"], :name => "index_subjects_on_teacher_id"

end
