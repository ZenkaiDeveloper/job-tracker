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

ActiveRecord::Schema.define(version: 20181205213533) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "job_files", force: :cascade do |t|
    t.integer "job_id"
    t.string "resume_link"
    t.string "cover_letter_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "joblists", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "company_name"
    t.string "location"
    t.string "snippet"
    t.string "job_link"
    t.integer "joblist_id"
    t.string "salary", default: ""
    t.string "status", default: ""
    t.string "deadline", default: ""
    t.string "applied", default: ""
    t.string "interview1", default: ""
    t.string "interview2", default: ""
    t.string "offer", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "content"
    t.string "job_id"
    t.string "due_date"
    t.boolean "checked", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "username"
    t.integer "dashboard_id", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
