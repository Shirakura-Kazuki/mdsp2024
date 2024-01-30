# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2024_01_21_124023) do
  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "role"
=======
ActiveRecord::Schema[7.0].define(version: 2024_01_16_091728) do
  create_table "fingernumbers", force: :cascade do |t|
    t.string "fingerprint_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fingerprintds", force: :cascade do |t|
    t.string "fingerprint_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fingerprints", force: :cascade do |t|
    t.string "fingerprint_id"
>>>>>>> e78d9e2f9d891ec3c9f919f8e4293e977174a6d1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
