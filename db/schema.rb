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

ActiveRecord::Schema.define(version: 20190217042642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts_products", force: :cascade do |t|
    t.integer "cart_id"
    t.integer "product_id"
    t.integer "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_carts_products_on_cart_id"
    t.index ["product_id"], name: "index_carts_products_on_product_id"
    t.index ["shop_id"], name: "index_carts_products_on_shop_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "shop_id"
    t.string "title"
    t.string "description"
    t.float "price"
    t.float "discount"
    t.boolean "instock"
    t.string "text_after_purchase"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status"
  end

  create_table "shops", force: :cascade do |t|
    t.string "slug"
    t.string "title"
    t.string "descripion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
