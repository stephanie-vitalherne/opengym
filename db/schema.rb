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

ActiveRecord::Schema.define(version: 2018_09_14_160501) do

<<<<<<< HEAD
  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "event_type"
    t.boolean "approved", default: false
    t.boolean "denied", default: false
    t.date "start_date"
    t.date "end_date"
    t.integer "user_id"
    t.integer "gym_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gym_id"], name: "index_events_on_gym_id"
    t.index ["user_id"], name: "index_events_on_user_id"
=======
  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
>>>>>>> 6557354d3dd0691b6d3933c50d4294aba750d751
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
