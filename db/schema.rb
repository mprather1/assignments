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

ActiveRecord::Schema.define(version: 20160326011550) do

  create_table "assignments", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "due_date"
    t.string   "attachment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assignments_classrooms", force: true do |t|
    t.integer "assignment_id"
    t.integer "classroom_id"
  end

  add_index "assignments_classrooms", ["classroom_id", "assignment_id"], name: "index_assignments_classrooms_on_classroom_id_and_assignment_id"

  create_table "assignments_users", force: true do |t|
    t.integer "user_id"
    t.integer "assignment_id"
  end

  add_index "assignments_users", ["user_id", "assignment_id"], name: "index_assignments_users_on_user_id_and_assignment_id"

  create_table "classrooms", force: true do |t|
    t.string   "period"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classrooms_users", force: true do |t|
    t.integer "user_id"
    t.integer "classroom_id"
  end

  add_index "classrooms_users", ["user_id", "classroom_id"], name: "index_classrooms_users_on_user_id_and_classroom_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.boolean  "admin",           default: false
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
