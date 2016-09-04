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

ActiveRecord::Schema.define(version: 20160904040945) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "is_admin",               default: false
    t.boolean  "is_active",              default: true
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "web_app_files", force: :cascade do |t|
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "web_app_key_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["web_app_key_id"], name: "index_web_app_files_on_web_app_key_id", using: :btree
  end

  create_table "web_app_keys", force: :cascade do |t|
    t.string   "api_key"
    t.boolean  "test"
    t.integer  "web_app_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["web_app_id"], name: "index_web_app_keys_on_web_app_id", using: :btree
  end

  create_table "web_apps", force: :cascade do |t|
    t.string   "page",        limit: 250
    t.string   "description", limit: 250
    t.integer  "user_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["user_id"], name: "index_web_apps_on_user_id", using: :btree
  end

  add_foreign_key "web_app_files", "web_app_keys"
  add_foreign_key "web_app_keys", "web_apps"
  add_foreign_key "web_apps", "users"
end
