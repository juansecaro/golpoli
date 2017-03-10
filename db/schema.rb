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

ActiveRecord::Schema.define(version: 20170310183332) do

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
    t.string   "type"
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
    t.string   "type"
    t.string   "url1"
    t.string   "url2"
    t.string   "url3"
    t.integer  "entity_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["entity_id"], name: "index_fields_on_entity_id"
  end

end
