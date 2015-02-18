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

ActiveRecord::Schema.define(version: 20150120141402) do

  create_table "activity_levels", force: :cascade do |t|
    t.integer  "act_level"
    t.integer  "user_id"
    t.integer  "diary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "activity_levels", ["diary_id"], name: "index_activity_levels_on_diary_id"
  add_index "activity_levels", ["user_id"], name: "index_activity_levels_on_user_id"

  create_table "diaries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "effective_treatments", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "diary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "effective_treatments", ["diary_id"], name: "index_effective_treatments_on_diary_id"
  add_index "effective_treatments", ["user_id"], name: "index_effective_treatments_on_user_id"

  create_table "mental_states", force: :cascade do |t|
    t.string   "disposition"
    t.string   "stress"
    t.string   "mood_stability"
    t.integer  "user_id"
    t.integer  "diary_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "mental_states", ["diary_id"], name: "index_mental_states_on_diary_id"
  add_index "mental_states", ["user_id"], name: "index_mental_states_on_user_id"

  create_table "other_symptoms", force: :cascade do |t|
    t.string   "symotom_name"
    t.integer  "user_id"
    t.integer  "diary_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "other_symptoms", ["diary_id"], name: "index_other_symptoms_on_diary_id"
  add_index "other_symptoms", ["user_id"], name: "index_other_symptoms_on_user_id"

  create_table "pain_descriptions", force: :cascade do |t|
    t.string   "description_name"
    t.integer  "user_id"
    t.integer  "diary_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "pain_descriptions", ["diary_id"], name: "index_pain_descriptions_on_diary_id"
  add_index "pain_descriptions", ["user_id"], name: "index_pain_descriptions_on_user_id"

  create_table "pain_durations", force: :cascade do |t|
    t.integer  "duration_level"
    t.integer  "user_id"
    t.integer  "diary_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "pain_durations", ["diary_id"], name: "index_pain_durations_on_diary_id"
  add_index "pain_durations", ["user_id"], name: "index_pain_durations_on_user_id"

  create_table "pain_intensity_levels", force: :cascade do |t|
    t.integer  "intensity_level"
    t.integer  "user_id"
    t.integer  "diary_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "pain_intensity_levels", ["diary_id"], name: "index_pain_intensity_levels_on_diary_id"
  add_index "pain_intensity_levels", ["user_id"], name: "index_pain_intensity_levels_on_user_id"

  create_table "pain_onset_trackers", force: :cascade do |t|
    t.integer  "diary_id"
    t.integer  "pain_onset_speed"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
  end

  create_table "pain_records", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "limited_activities"
    t.string   "limited_activities_name"
    t.string   "all_medicines_taken"
    t.string   "unrelieved_pain"
    t.integer  "how_often_unrelieved_pain"
    t.string   "is_activity_starting_pain"
    t.string   "activity_starting_pain_name"
    t.integer  "average_pain_level"
    t.string   "used_other_actions_to_relieve_pain"
    t.string   "pain_placement"
    t.string   "side_effects_after_pain_medicine"
    t.string   "skipped_medicines"
    t.string   "skipped_medicines_why"
    t.string   "called_doctor_because_of_pain"
    t.string   "slept_through_night"
    t.integer  "slept_through_night_disrupted_times"
    t.integer  "slept_hours_night"
    t.string   "satisfied_with_pain_management"
    t.string   "why_satisfied_or_not"
    t.integer  "acceptable_pain_level"
    t.string   "had_pain_today"
    t.string   "other_actions_to_relieve_pain_name"
    t.integer  "activity_level"
    t.integer  "disposition_level"
    t.integer  "stress_level"
    t.integer  "mood_stability_level"
    t.integer  "pain_onset_speed"
    t.string   "pain_description"
    t.integer  "pain_duration"
    t.string   "pain_trigger"
    t.integer  "time_to_fall_asleep"
    t.string   "sleep_type"
    t.integer  "sleep_interrupted_times"
    t.integer  "sleep_quality"
    t.time     "hours_fo_sleep"
  end

  create_table "pain_triggers", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "diary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pain_triggers", ["diary_id"], name: "index_pain_triggers_on_diary_id"
  add_index "pain_triggers", ["user_id"], name: "index_pain_triggers_on_user_id"

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true

  create_table "tags", force: :cascade do |t|
    t.string "name"
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

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
