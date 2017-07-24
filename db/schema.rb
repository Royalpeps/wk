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

ActiveRecord::Schema.define(version: 20170724171228) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kids", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "birthday"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_kids_on_user_id", using: :btree
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "status",          default: "Pending"
    t.integer  "number_of_weeks"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "user_id"
    t.integer  "workplace_id"
    t.index ["user_id"], name: "index_reservations_on_user_id", using: :btree
    t.index ["workplace_id"], name: "index_reservations_on_workplace_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "phone_number"
    t.string   "profession"
    t.string   "beneficiary_number"
    t.string   "insurance_name"
    t.string   "insurance_address"
    t.string   "insurance_policy"
    t.boolean  "admin",                  default: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "weekly_schedules", force: :cascade do |t|
    t.boolean  "worker_monday_morning"
    t.boolean  "worker_monday_afternoon"
    t.boolean  "worker_tuesday_morning"
    t.boolean  "worker_tuesday_afternoon"
    t.boolean  "worker_wednesday_morning"
    t.boolean  "worker_wednesday_afternoon"
    t.boolean  "worker_thursday_morning"
    t.boolean  "worker_thursday_afternoon"
    t.boolean  "worker_friday_morning"
    t.boolean  "worker_friday_afternoon"
    t.boolean  "kid_monday_morning"
    t.boolean  "kid_monday_afternoon"
    t.boolean  "kid_tuesday_morning"
    t.boolean  "kid_tuesday_afternoon"
    t.boolean  "kid_wednesday_morning"
    t.boolean  "kid_wednesday_afternoon"
    t.boolean  "kid_thursday_morning"
    t.boolean  "kid_thursday_afternoon"
    t.boolean  "kid_friday_morning"
    t.boolean  "kid_friday_afternoon"
    t.integer  "reservation_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["reservation_id"], name: "index_weekly_schedules_on_reservation_id", using: :btree
  end

  create_table "workplaces", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "worker_spots"
    t.integer  "kid_spots"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "kids", "users"
  add_foreign_key "reservations", "users"
  add_foreign_key "reservations", "workplaces"
  add_foreign_key "weekly_schedules", "reservations"
end
