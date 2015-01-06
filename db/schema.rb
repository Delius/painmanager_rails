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

ActiveRecord::Schema.define(version: 20150106213745) do

  create_table "pain_records", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "limited_activities"
    t.string   "limited_activities_name"
    t.boolean  "all_medicines_taken"
    t.boolean  "unrelieved_pain"
    t.integer  "how_often_unrelieved_pain"
    t.boolean  "is_activity_starting_pain"
    t.string   "activity_starting_pain_name"
    t.integer  "average_pain_level"
    t.boolean  "used_other_actions_to_relieve_pain"
    t.string   "pain_placement"
    t.string   "side_effects_after_pain_medicine"
    t.boolean  "skipped_medicines"
    t.string   "skipped_medicines_why"
    t.boolean  "called_doctor_because_of_pain" #do tad
    t.boolean  "slept_through_night"
    t.integer  "slept_through_night_disrupted_times"
    t.integer  "slept_hours_night"
    t.boolean  "satisfied_with_pain_management"
    t.string   "why_satisfied_or_not"
    t.integer  "acceptable_pain_level"
    t.boolean  "had_pain_today"
    t.string   "other_actions_to_relieve_pain_name"
  end

  create_table "user_conditions", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "user_condition_diagnosed"
    t.string   "user_condition_description"
    t.string   "user_condition_category"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "user_moods", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "user_mood_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
