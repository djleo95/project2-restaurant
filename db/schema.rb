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

ActiveRecord::Schema.define(version: 20170413065341) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "category_dishes", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "dish_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_category_dishes_on_category_id"
    t.index ["dish_id"], name: "index_category_dishes_on_dish_id"
  end

  create_table "combo_dishes", force: :cascade do |t|
    t.integer  "combo_id"
    t.integer  "dish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["combo_id"], name: "index_combo_dishes_on_combo_id"
    t.index ["dish_id"], name: "index_combo_dishes_on_dish_id"
  end

  create_table "combos", force: :cascade do |t|
    t.string   "description"
    t.integer  "discount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "image"
    t.string   "description"
    t.boolean  "isAvailable"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "humen", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "role"
    t.string   "phoneNum"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "order_combos", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "combo_id"
    t.integer  "discount"
    t.integer  "quantity"
    t.integer  "price"
    t.integer  "total_price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["combo_id"], name: "index_order_combos_on_combo_id"
    t.index ["order_id"], name: "index_order_combos_on_order_id"
  end

  create_table "order_dishes", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "dish_id"
    t.integer  "discount"
    t.integer  "quantity"
    t.integer  "price"
    t.integer  "total_price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["dish_id"], name: "index_order_dishes_on_dish_id"
    t.index ["order_id"], name: "index_order_dishes_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "guest_id"
    t.integer  "table_id"
    t.string   "code"
    t.date     "time_in"
    t.date     "time_out"
    t.boolean  "isConfirm",  default: false
    t.integer  "discount"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["guest_id"], name: "index_orders_on_guest_id"
    t.index ["table_id"], name: "index_orders_on_table_id"
  end

  create_table "tables", force: :cascade do |t|
    t.integer  "capacity"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
