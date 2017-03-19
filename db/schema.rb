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

ActiveRecord::Schema.define(version: 20170319034110) do

  create_table "advertisers", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "cif"
    t.string   "city"
    t.string   "postal_code"
    t.string   "bank"
    t.string   "paypal"
    t.text     "other"
    t.decimal  "price"
    t.datetime "start_date"
    t.integer  "duration"
    t.string   "url1"
    t.string   "url2"
    t.string   "url3"
    t.integer  "active_url"
    t.boolean  "active"
    t.integer  "entity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["entity_id"], name: "index_advertisers_on_entity_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone"
    t.text     "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "kind"
    t.integer  "entity_id"
    t.index ["entity_id"], name: "index_contacts_on_entity_id"
  end

  create_table "entities", force: :cascade do |t|
    t.string   "name"
    t.string   "cif"
    t.text     "address"
    t.string   "postal_code"
    t.string   "city"
    t.string   "country"
    t.string   "bank"
    t.string   "paypal"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "contact_id"
    t.index ["contact_id"], name: "index_entities_on_contact_id"
  end

  create_table "fields", force: :cascade do |t|
    t.string   "name"
    t.decimal  "normal_price"
    t.decimal  "special_price"
    t.boolean  "active"
    t.text     "other"
    t.string   "kind"
    t.string   "url1"
    t.string   "url2"
    t.string   "url3"
    t.integer  "entity_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["entity_id"], name: "index_fields_on_entity_id"
  end

  create_table "schedule_configs", force: :cascade do |t|
    t.time     "open0"
    t.time     "open1"
    t.time     "open2"
    t.time     "open3"
    t.time     "open4"
    t.time     "open5"
    t.time     "open6"
    t.time     "close0"
    t.time     "close1"
    t.time     "close2"
    t.time     "close3"
    t.time     "close4"
    t.time     "close5"
    t.time     "close6"
    t.time     "ospecial0"
    t.time     "ospecial1"
    t.time     "ospecial2"
    t.time     "ospecial3"
    t.time     "ospecial4"
    t.time     "ospecial5"
    t.time     "ospecial6"
    t.time     "especial0"
    t.time     "especial1"
    t.time     "especial2"
    t.time     "especial3"
    t.time     "especial4"
    t.time     "especial5"
    t.time     "especial6"
    t.integer  "field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_schedule_configs_on_field_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "day_id"
    t.string   "from_field"
    t.datetime "last_check"
    t.integer  "field_id"
    t.integer  "h0"
    t.integer  "h1"
    t.integer  "h2"
    t.integer  "h3"
    t.integer  "h4"
    t.integer  "h5"
    t.integer  "h6"
    t.integer  "h7"
    t.integer  "h8"
    t.integer  "h9"
    t.integer  "h10"
    t.integer  "h11"
    t.integer  "h12"
    t.integer  "h13"
    t.integer  "h14"
    t.integer  "h15"
    t.integer  "h16"
    t.integer  "h17"
    t.integer  "h18"
    t.integer  "h19"
    t.integer  "h20"
    t.integer  "h21"
    t.integer  "h22"
    t.integer  "h23"
    t.integer  "h24"
    t.integer  "h25"
    t.integer  "h26"
    t.integer  "h27"
    t.integer  "h28"
    t.integer  "h29"
    t.integer  "h30"
    t.integer  "h31"
    t.integer  "h32"
    t.integer  "h33"
    t.integer  "h34"
    t.integer  "h35"
    t.integer  "h36"
    t.integer  "h37"
    t.integer  "h38"
    t.integer  "h39"
    t.integer  "h40"
    t.integer  "h41"
    t.integer  "h42"
    t.integer  "h43"
    t.integer  "h44"
    t.integer  "h45"
    t.integer  "h46"
    t.integer  "h47"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_schedules_on_field_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
