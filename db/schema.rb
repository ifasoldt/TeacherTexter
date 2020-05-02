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

ActiveRecord::Schema.define(version: 2020_05_01_144754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parents", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "student_name"
    t.string "student_grade"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_parents_on_user_id"
  end

  create_table "text_templates", force: :cascade do |t|
    t.bigint "user_id"
    t.text "body"
    t.datetime "send_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_text_templates_on_user_id"
  end

  create_table "texts", force: :cascade do |t|
    t.bigint "recipient_id"
    t.bigint "text_template_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_texts_on_recipient_id"
    t.index ["text_template_id"], name: "index_texts_on_text_template_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["username"], name: "index_users_on_username"
  end

end
