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

ActiveRecord::Schema.define(version: 20160720210840) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "customer_id", limit: 4
    t.integer  "city_id",     limit: 4
    t.integer  "state_id",    limit: 4
    t.string   "address",     limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "name",        limit: 255
  end

  add_index "addresses", ["city_id"], name: "index_addresses_on_city_id", using: :btree
  add_index "addresses", ["customer_id"], name: "index_addresses_on_customer_id", using: :btree
  add_index "addresses", ["state_id"], name: "index_addresses_on_state_id", using: :btree

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

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

  create_table "artist_procuct_groups", force: :cascade do |t|
    t.integer  "product_group_id", limit: 4
    t.integer  "article_id",       limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "artist_procuct_groups", ["article_id"], name: "index_artist_procuct_groups_on_article_id", using: :btree
  add_index "artist_procuct_groups", ["product_group_id"], name: "index_artist_procuct_groups_on_product_group_id", using: :btree

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

  create_table "cart_product_groups", force: :cascade do |t|
    t.integer  "product_group_id", limit: 4
    t.integer  "cart_id",          limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "cart_product_groups", ["cart_id"], name: "index_cart_product_groups_on_cart_id", using: :btree
  add_index "cart_product_groups", ["product_group_id"], name: "index_cart_product_groups_on_product_group_id", using: :btree

  create_table "cart_products", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.integer  "cart_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "cart_products", ["cart_id"], name: "index_cart_products_on_cart_id", using: :btree
  add_index "cart_products", ["product_id"], name: "index_cart_products_on_product_id", using: :btree

  create_table "carts", force: :cascade do |t|
    t.integer  "customer_id",   limit: 4
    t.integer  "state_cart_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "carts", ["customer_id"], name: "index_carts_on_customer_id", using: :btree
  add_index "carts", ["state_cart_id"], name: "index_carts_on_state_cart_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "state_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id", using: :btree

  create_table "customer_groups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "customer_group_id",      limit: 4
  end

  add_index "customers", ["customer_group_id"], name: "index_customers_on_customer_group_id", using: :btree
  add_index "customers", ["email"], name: "index_customers_on_email", unique: true, using: :btree
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true, using: :btree

  create_table "order_statuses", force: :cascade do |t|
    t.string   "status",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "cart_id",           limit: 4
    t.integer  "customer_id",       limit: 4
    t.integer  "order_status_id",   limit: 4
    t.integer  "payment_status_id", limit: 4
    t.integer  "payment_type_id",   limit: 4
    t.integer  "address_id",        limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "orders", ["address_id"], name: "index_orders_on_address_id", using: :btree
  add_index "orders", ["cart_id"], name: "index_orders_on_cart_id", using: :btree
  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree
  add_index "orders", ["order_status_id"], name: "index_orders_on_order_status_id", using: :btree
  add_index "orders", ["payment_status_id"], name: "index_orders_on_payment_status_id", using: :btree
  add_index "orders", ["payment_type_id"], name: "index_orders_on_payment_type_id", using: :btree

  create_table "payment_statuses", force: :cascade do |t|
    t.string   "status",          limit: 255
    t.integer  "payment_type_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "payment_statuses", ["payment_type_id"], name: "index_payment_statuses_on_payment_type_id", using: :btree

  create_table "payment_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "product_groups", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.string   "short_description", limit: 255
    t.text     "description",       limit: 65535
    t.boolean  "on_sale"
    t.integer  "price",             limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "product_product_groups", force: :cascade do |t|
    t.integer  "product_id",       limit: 4
    t.integer  "product_group_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "product_product_groups", ["product_group_id"], name: "index_product_product_groups_on_product_group_id", using: :btree
  add_index "product_product_groups", ["product_id"], name: "index_product_product_groups_on_product_id", using: :btree

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

  create_table "state_carts", force: :cascade do |t|
    t.string   "state",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "wire_transfers", force: :cascade do |t|
    t.string   "bank",            limit: 255
    t.string   "titular_account", limit: 255
    t.string   "account",         limit: 255
    t.string   "account_type",    limit: 255
    t.string   "rut",             limit: 255
    t.string   "email",           limit: 255
    t.integer  "payment_type_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "wire_transfers", ["payment_type_id"], name: "index_wire_transfers_on_payment_type_id", using: :btree

  add_foreign_key "addresses", "cities"
  add_foreign_key "addresses", "customers"
  add_foreign_key "addresses", "states"
  add_foreign_key "articles", "artists"
  add_foreign_key "articles", "products"
  add_foreign_key "artist_procuct_groups", "articles"
  add_foreign_key "artist_procuct_groups", "product_groups"
  add_foreign_key "artists", "cities"
  add_foreign_key "artists", "states"
  add_foreign_key "cart_product_groups", "carts"
  add_foreign_key "cart_product_groups", "product_groups"
  add_foreign_key "cart_products", "carts"
  add_foreign_key "cart_products", "products"
  add_foreign_key "carts", "customers"
  add_foreign_key "carts", "state_carts"
  add_foreign_key "cities", "states"
  add_foreign_key "customers", "customer_groups"
  add_foreign_key "orders", "addresses"
  add_foreign_key "orders", "carts"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "orders", "payment_statuses"
  add_foreign_key "orders", "payment_types"
  add_foreign_key "payment_statuses", "payment_types"
  add_foreign_key "product_product_groups", "product_groups"
  add_foreign_key "product_product_groups", "products"
  add_foreign_key "products", "artists"
  add_foreign_key "products", "product_types"
  add_foreign_key "wire_transfers", "payment_types"
end
