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

ActiveRecord::Schema.define(version: 2018_12_13_185200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "salary_per_hour"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date_of_birth"
    t.string "avatar_patient_file_name"
    t.string "avatar_patient_content_type"
    t.bigint "avatar_patient_file_size"
    t.datetime "avatar_patient_updated_at"
  end

  create_table "visits", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "doctor_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_visit"
    t.datetime "end_visit"
    t.index ["doctor_id"], name: "index_visits_on_doctor_id"
    t.index ["patient_id"], name: "index_visits_on_patient_id"
  end

  add_foreign_key "visits", "doctors"
  add_foreign_key "visits", "patients"
end
