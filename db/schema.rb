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

ActiveRecord::Schema.define(version: 20171026025242) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "descriptors", force: :cascade do |t|
    t.text     "foreign_key_type"
    t.integer  "foreign_key_id"
    t.string   "name"
    t.integer  "description_id"
    t.integer  "category_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "discount_cards", force: :cascade do |t|
    t.integer  "store_id"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "receipt_id"
    t.integer  "product_id"
    t.boolean  "on_sale"
    t.decimal  "list_price"
    t.decimal  "sale_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.text     "state"
    t.text     "country"
    t.text     "postal_code"
    t.float    "longitude"
    t.float    "latitude"
    t.text     "ip_address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.datetime "datetime"
    t.integer  "store_id"
    t.string   "payment_method"
    t.integer  "order_number"
    t.decimal  "total"
    t.decimal  "currency"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "location_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shopping_list_products", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "shopping_list_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "shopping_lists", force: :cascade do |t|
    t.integer  "user_id"
    t.decimal  "total"
    t.integer  "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.integer  "location_id"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_hash"
    t.text     "location_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "newsfeed_uri"
    t.text     "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
