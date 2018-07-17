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

ActiveRecord::Schema.define(version: 20180717213717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assistances", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.bigint "color_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "points"
    t.index ["color_id"], name: "index_buildings_on_color_id"
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "points"
  end

  create_table "staff_assistances", force: :cascade do |t|
    t.bigint "staffs_id"
    t.bigint "assistances_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assistances_id"], name: "index_staff_assistances_on_assistances_id"
    t.index ["staffs_id"], name: "index_staff_assistances_on_staffs_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "matricula"
    t.string "role"
    t.bigint "building_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_staffs_on_building_id"
  end

  create_table "student_activities", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_student_activities_on_activity_id"
    t.index ["student_id"], name: "index_student_activities_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "career"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "building_id"
    t.index ["building_id"], name: "index_students_on_building_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "encrypted_password", default: "", null: false
    t.string "type"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "buildings", "colors"
  add_foreign_key "staff_assistances", "assistances", column: "assistances_id"
  add_foreign_key "staff_assistances", "staffs", column: "staffs_id"
  add_foreign_key "staffs", "buildings"
  add_foreign_key "student_activities", "activities"
  add_foreign_key "student_activities", "students"
  add_foreign_key "students", "buildings"
end
