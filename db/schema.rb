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

ActiveRecord::Schema.define(version: 2019_04_16_222531) do

  create_table "course_instructors", force: :cascade do |t|
    t.string "username"
    t.integer "user_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_instructors_on_course_id"
    t.index ["user_id"], name: "index_course_instructors_on_user_id"
  end

  create_table "course_students", force: :cascade do |t|
    t.string "username"
    t.integer "user_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_students_on_course_id"
    t.index ["user_id"], name: "index_course_students_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.integer "semester"
    t.integer "year"
    t.integer "credits"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_sections_on_course_id"
  end

  create_table "session_attendances", force: :cascade do |t|
    t.integer "session_id"
    t.integer "student_course_id"
    t.datetime "in_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_session_attendances_on_session_id"
    t.index ["student_course_id"], name: "index_session_attendances_on_student_course_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "name"
    t.integer "course_instructor_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text "address"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id"
    t.string "batch"
    t.index ["course_id"], name: "index_sessions_on_course_id"
    t.index ["course_instructor_id"], name: "index_sessions_on_course_instructor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
