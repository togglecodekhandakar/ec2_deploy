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

ActiveRecord::Schema.define(version: 20170912234702) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "category_id"
    t.string "category_id_s_name"
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commonquestions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "commonquestion_id"
    t.text "question_text"
    t.text "options"
    t.string "answer_option_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "parttype_id"
    t.bigint "questiontype_id"
    t.bigint "question_id"
    t.index ["parttype_id"], name: "index_commonquestions_on_parttype_id"
    t.index ["question_id"], name: "index_commonquestions_on_question_id"
    t.index ["questiontype_id"], name: "index_commonquestions_on_questiontype_id"
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "employee_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email_address"
    t.string "mobile_number"
    t.string "user_name"
    t.string "password"
    t.string "manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "site_id"
    t.index ["site_id"], name: "index_employees_on_site_id"
  end

  create_table "parttypes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "parttype_id"
    t.string "parttype_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permitdetails", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "permitdetail_id"
    t.text "strreply"
    t.text "question_text"
    t.text "commonquestion_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "permit_id"
    t.bigint "question_id"
    t.bigint "commonquestion_id"
    t.index ["commonquestion_id"], name: "index_permitdetails_on_commonquestion_id"
    t.index ["permit_id"], name: "index_permitdetails_on_permit_id"
    t.index ["question_id"], name: "index_permitdetails_on_question_id"
  end

  create_table "permits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "permitid"
    t.string "permit"
    t.string "filename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.bigint "employee_id"
    t.bigint "site_id"
    t.index ["category_id"], name: "index_permits_on_category_id"
    t.index ["employee_id"], name: "index_permits_on_employee_id"
    t.index ["site_id"], name: "index_permits_on_site_id"
  end

  create_table "questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "question_id"
    t.text "question_text"
    t.text "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.bigint "parttype_id"
    t.bigint "questiontype_id"
    t.index ["category_id"], name: "index_questions_on_category_id"
    t.index ["parttype_id"], name: "index_questions_on_parttype_id"
    t.index ["questiontype_id"], name: "index_questions_on_questiontype_id"
  end

  create_table "questiontypes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "questiontype_id"
    t.string "questiontype_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "site_id"
    t.string "site_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "authentication_token", limit: 30
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "commonquestions", "parttypes"
  add_foreign_key "commonquestions", "questions"
  add_foreign_key "commonquestions", "questiontypes"
  add_foreign_key "employees", "sites"
  add_foreign_key "permitdetails", "commonquestions"
  add_foreign_key "permitdetails", "permits"
  add_foreign_key "permitdetails", "questions"
  add_foreign_key "permits", "categories"
  add_foreign_key "permits", "employees"
  add_foreign_key "permits", "sites"
  add_foreign_key "questions", "categories"
  add_foreign_key "questions", "parttypes"
  add_foreign_key "questions", "questiontypes"
end
