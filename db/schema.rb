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

ActiveRecord::Schema.define(version: 20150510185255) do

  create_table "class_years", force: true do |t|
    t.integer  "class_year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.integer  "course_id"
    t.string   "course_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grades", force: true do |t|
    t.string   "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hours", force: true do |t|
    t.integer  "hours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors", force: true do |t|
    t.string   "instructor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "language_proficiencies", force: true do |t|
    t.string   "student_id_lp"
    t.string   "language_lp"
    t.string   "proficiency_level_lp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.string   "language"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "past_ta", force: true do |t|
    t.string   "student_id_pta"
    t.integer  "course_id_pta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proficiencies", force: true do |t|
    t.string   "proficiency_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qrs", force: true do |t|
    t.string   "qr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semesters", force: true do |t|
    t.string   "semester"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "student_id"
    t.string   "student_name"
    t.string   "major"
    t.string   "minor"
    t.text     "other_information"
    t.integer  "class_year_st"
    t.integer  "hours_st"
    t.string   "qr_st"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "takens", force: true do |t|
    t.string   "student_id_taken"
    t.integer  "course_id_taken"
    t.string   "grade_taken"
    t.string   "instructor_taken"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "willing_to_grades", force: true do |t|
    t.string   "student_id_wtg"
    t.integer  "course_id_wtg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "willing_to_ta", force: true do |t|
    t.string   "student_id_wtta"
    t.integer  "course_id_wtta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "willing_to_ta_languages", force: true do |t|
    t.string   "student_id_wttl"
    t.string   "language_wttl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "years", force: true do |t|
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
