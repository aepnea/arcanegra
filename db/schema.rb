# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160716041823) do

  create_table "articles", force: :cascade do |t|
    t.integer  "artist_id",   limit: 4
    t.integer  "product_id",  limit: 4
    t.string   "tittle",      limit: 255
    t.string   "description", limit: 255
    t.text     "text",        limit: 65535
    t.boolean  "enable"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "articles", ["artist_id"], name: "index_articles_on_artist_id", using: :btree
  add_index "articles", ["product_id"], name: "index_articles_on_product_id", using: :btree

  create_table "artists", force: :cascade do |t|
    t.string   "firstname",         limit: 255
    t.string   "lastname",          limit: 255
    t.string   "short_description", limit: 255
    t.text     "description",       limit: 65535
    t.string   "email",             limit: 255
    t.string   "web",               limit: 255
    t.string   "address",           limit: 255
    t.integer  "city_id",           limit: 4
    t.integer  "state_id",          limit: 4
    t.string   "country",           limit: 255
    t.string   "phone",             limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "artists", ["city_id"], name: "index_artists_on_city_id", using: :btree
  add_index "artists", ["state_id"], name: "index_artists_on_state_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "state_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id", using: :btree

  create_table "product_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "product_type_id",   limit: 4
    t.integer  "artist_id",         limit: 4
    t.string   "name",              limit: 255
    t.string   "short_description", limit: 255
    t.text     "description",       limit: 65535
    t.boolean  "on_sale"
    t.integer  "price",             limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "products", ["artist_id"], name: "index_products_on_artist_id", using: :btree
  add_index "products", ["product_type_id"], name: "index_products_on_product_type_id", using: :btree

  create_table "states", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "articles", "artists"
  add_foreign_key "articles", "products"
  add_foreign_key "artists", "cities"
  add_foreign_key "artists", "states"
  add_foreign_key "cities", "states"
  add_foreign_key "products", "artists"
  add_foreign_key "products", "product_types"
end
