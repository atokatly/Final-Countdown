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

ActiveRecord::Schema.define(version: 20170105021624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pitchdays", force: :cascade do |t|
    t.string   "cohort"
    t.integer  "size"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pitchdays_on_user_id", using: :btree
  end

  create_table "pitches", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.boolean  "final"
    t.integer  "student_id"
    t.integer  "pitchday_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["pitchday_id"], name: "index_pitches_on_pitchday_id", using: :btree
    t.index ["student_id"], name: "index_pitches_on_student_id", using: :btree
  end

  create_table "preferences", force: :cascade do |t|
    t.integer  "rank"
    t.integer  "pitch_id"
    t.integer  "user_id"
    t.integer  "round_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pitch_id"], name: "index_preferences_on_pitch_id", using: :btree
    t.index ["round_id"], name: "index_preferences_on_round_id", using: :btree
    t.index ["user_id"], name: "index_preferences_on_user_id", using: :btree
  end

  create_table "rounds", force: :cascade do |t|
    t.integer  "round_num"
    t.integer  "pitchday_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["pitchday_id"], name: "index_rounds_on_pitchday_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "full_name"
    t.integer  "phase_num"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_students_on_team_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",         null: false
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_foreign_key "preferences", "pitches"
  add_foreign_key "preferences", "rounds"
  add_foreign_key "preferences", "users"
end
