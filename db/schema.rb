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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130423081702) do

  create_table "wkshp_accounts", :force => true do |t|
    t.integer  "newsletter_id"
    t.string   "name"
    t.string   "surname"
    t.date     "date_of_birth"
    t.string   "physical_address"
    t.string   "postal_address"
    t.string   "email_address"
    t.string   "contact_number"
    t.string   "password"
    t.integer  "access_level"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "wkshp_address_books", :force => true do |t|
    t.integer  "account_id"
    t.string   "name"
    t.string   "physical_address"
    t.string   "contact_number"
    t.string   "contact_number2"
    t.string   "email_address"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "wkshp_carts", :force => true do |t|
    t.integer  "product_id"
    t.integer  "account_id"
    t.integer  "currency_id"
    t.integer  "quantity"
    t.float    "vat"
    t.float    "amount"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "wkshp_countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wkshp_currencies", :force => true do |t|
    t.integer  "country_id"
    t.string   "name"
    t.string   "syboml"
    t.float    "exchange_rate"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "wkshp_departments", :force => true do |t|
    t.integer  "product_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "wkshp_inventories", :force => true do |t|
    t.integer  "product_id"
    t.integer  "items_count"
    t.integer  "sold_items"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "wkshp_orders", :force => true do |t|
    t.integer  "account_id"
    t.integer  "category_id"
    t.integer  "package_id"
    t.integer  "cart_id"
    t.integer  "items_count"
    t.float    "amount"
    t.date     "order_date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "wkshp_packages", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "wkshp_products", :force => true do |t|
    t.integer  "department_id"
    t.string   "name"
    t.string   "description"
    t.float    "price"
    t.boolean  "is_auctioned"
    t.boolean  "is_promoted"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "wkshp_shipments", :force => true do |t|
    t.integer  "account_id"
    t.string   "description"
    t.date     "departure_date"
    t.date     "delivery_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
