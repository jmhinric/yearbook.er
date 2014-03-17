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

ActiveRecord::Schema.define(version: 20140317202316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campuses", force: true do |t|
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "campus_pic_file_name"
    t.string   "campus_pic_content_type"
    t.integer  "campus_pic_file_size"
    t.datetime "campus_pic_updated_at"
  end

  create_table "cohorts", force: true do |t|
    t.string   "location"
    t.string   "year"
    t.string   "month"
    t.string   "nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cohort_photo_file_name"
    t.string   "cohort_photo_content_type"
    t.integer  "cohort_photo_file_size"
    t.datetime "cohort_photo_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "github"
    t.string   "linkedin"
    t.string   "bio"
    t.boolean  "admin"
    t.string   "website"
    t.string   "employer"
    t.string   "profile_pic_file_name"
    t.string   "profile_pic_content_type"
    t.integer  "profile_pic_file_size"
    t.datetime "profile_pic_updated_at"
  end

end
