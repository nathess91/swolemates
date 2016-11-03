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

ActiveRecord::Schema.define(version: 20161103164629) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: :cascade do |t|
    t.integer  "workout_id"
    t.integer  "user_id"
    t.integer  "result_id"
    t.boolean  "accepted"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "opponent_id"
    t.integer  "opponent_results_id"
    t.index ["opponent_id"], name: "index_challenges_on_opponent_id", using: :btree
    t.index ["opponent_results_id"], name: "index_challenges_on_opponent_results_id", using: :btree
    t.index ["result_id"], name: "index_challenges_on_result_id", using: :btree
    t.index ["user_id"], name: "index_challenges_on_user_id", using: :btree
    t.index ["workout_id"], name: "index_challenges_on_workout_id", using: :btree
  end

  create_table "results", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "workout_id"
    t.integer  "qty"
    t.string   "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_results_on_user_id", using: :btree
    t.index ["workout_id"], name: "index_results_on_workout_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "gender"
    t.integer  "age"
    t.string   "fav_food"
    t.string   "fav_workout"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "location"
    t.string   "first_name"
    t.string   "last_name"
  end

  create_table "workouts", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "qty"
    t.string   "unit"
    t.string   "unit_of_competition"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_foreign_key "challenges", "results"
  add_foreign_key "challenges", "results", column: "opponent_results_id"
  add_foreign_key "challenges", "users"
  add_foreign_key "challenges", "users", column: "opponent_id"
  add_foreign_key "challenges", "workouts"
  add_foreign_key "results", "users"
  add_foreign_key "results", "workouts"
end
