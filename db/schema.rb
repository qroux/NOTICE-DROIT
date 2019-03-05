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

ActiveRecord::Schema.define(version: 2019_03_04_135949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "speciality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["speciality_id"], name: "index_chapters_on_speciality_id"
  end

  create_table "fiches", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "chapter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_fiches_on_chapter_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.jsonb "payment"
    t.bigint "student_id"
    t.bigint "speciality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "amount_cents", default: 0, null: false
    t.index ["speciality_id"], name: "index_orders_on_speciality_id"
    t.index ["student_id"], name: "index_orders_on_student_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "error_category"
    t.text "comment"
    t.integer "ranking"
    t.bigint "student_id"
    t.bigint "fiche_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fiche_id"], name: "index_reviews_on_fiche_id"
    t.index ["student_id"], name: "index_reviews_on_student_id"
  end

  create_table "specialities", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.string "tag"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
    t.index ["teacher_id"], name: "index_specialities_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.boolean "payed"
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

  create_table "teachers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "pseudo"
    t.string "avatar"
    t.index ["email"], name: "index_teachers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true
  end

  add_foreign_key "chapters", "specialities"
  add_foreign_key "fiches", "chapters"
  add_foreign_key "orders", "specialities"
  add_foreign_key "orders", "students"
  add_foreign_key "reviews", "fiches", column: "fiche_id"
  add_foreign_key "reviews", "students"
  add_foreign_key "specialities", "teachers"
end
