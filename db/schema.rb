# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_17_102115) do
  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "email"
    t.string "phone"
    t.string "town"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favourites", force: :cascade do |t|
    t.integer "good_id", null: false
    t.integer "agent_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agent_id"], name: "index_favourites_on_agent_id"
    t.index ["good_id"], name: "index_favourites_on_good_id"
  end

  create_table "goods", force: :cascade do |t|
    t.string "nomenclature"
    t.string "measure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goods_whs", force: :cascade do |t|
    t.integer "good_id", null: false
    t.integer "warehouse_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["good_id"], name: "index_goods_whs_on_good_id"
    t.index ["warehouse_id"], name: "index_goods_whs_on_warehouse_id"
  end

  create_table "operations", force: :cascade do |t|
    t.integer "quantity"
    t.float "price"
    t.text "op_date"
    t.integer "agent_id", null: false
    t.integer "good_id", null: false
    t.integer "warehouse_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "type_operation_id", null: false
    t.index ["agent_id"], name: "index_operations_on_agent_id"
    t.index ["good_id"], name: "index_operations_on_good_id"
    t.index ["type_operation_id"], name: "index_operations_on_type_operation_id"
    t.index ["warehouse_id"], name: "index_operations_on_warehouse_id"
  end

  create_table "type_operations", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "name"
    t.string "town"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "favourites", "agents"
  add_foreign_key "favourites", "goods"
  add_foreign_key "goods_whs", "goods"
  add_foreign_key "goods_whs", "warehouses"
  add_foreign_key "operations", "agents"
  add_foreign_key "operations", "goods"
  add_foreign_key "operations", "type_operations"
  add_foreign_key "operations", "warehouses"
end
