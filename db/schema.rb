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

ActiveRecord::Schema.define(version: 20150501211054) do

  create_table "backlog_items", force: :cascade do |t|
    t.integer  "backlog_id"
    t.integer  "question_id"
    t.integer  "position"
    t.integer  "assigned_to"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "backlogs", force: :cascade do |t|
    t.integer  "mission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "environments", force: :cascade do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "insights", force: :cascade do |t|
    t.string   "contents"
    t.integer  "insightable_id"
    t.string   "insightable_type"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "mission_environments", force: :cascade do |t|
    t.integer  "mission_id"
    t.integer  "environment_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "mission_memberships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "mission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mission_personas", force: :cascade do |t|
    t.integer  "mission_id"
    t.integer  "persona_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mission_procedures", force: :cascade do |t|
    t.integer  "mission_id"
    t.integer  "procedure_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "missions", force: :cascade do |t|
    t.date     "date"
    t.string   "company"
    t.string   "customer_point_of_contact"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "name"
  end

  create_table "personas", force: :cascade do |t|
    t.string   "name"
    t.text     "goals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.integer  "pictureable_id"
    t.string   "pictureable_type"
    t.string   "caption"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "image_url_file_name"
    t.string   "image_url_content_type"
    t.integer  "image_url_file_size"
    t.datetime "image_url_updated_at"
  end

  create_table "procedures", force: :cascade do |t|
    t.string   "name"
    t.text     "steps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "contents"
    t.integer  "questionable_id"
    t.string   "questionable_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
