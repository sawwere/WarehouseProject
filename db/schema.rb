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

ActiveRecord::Schema[7.0].define(version: 2022_12_04_142845) do
  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.string "phone"
    t.string "town"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favourites", force: :cascade do |t|
    t.integer "id_goods_id", null: false
    t.integer "id_ag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_ag_id"], name: "index_favourites_on_id_ag_id"
    t.index ["id_goods_id"], name: "index_favourites_on_id_goods_id"
  end

  create_table "goods", force: :cascade do |t|
    t.string "nomenclature"
    t.string "measure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operations", force: :cascade do |t|
    t.integer "id_goods_id", null: false
    t.integer "id_ag_id", null: false
    t.integer "id_wh_id", null: false
    t.integer "typeop"
    t.integer "quantity"
    t.float "price"
    t.text "op_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_ag_id"], name: "index_operations_on_id_ag_id"
    t.index ["id_goods_id"], name: "index_operations_on_id_goods_id"
    t.index ["id_wh_id"], name: "index_operations_on_id_wh_id"
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "name"
    t.string "town"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "favourites", "id_ags"
  add_foreign_key "favourites", "id_goods", column: "id_goods_id"
  add_foreign_key "operations", "id_ags"
  add_foreign_key "operations", "id_goods", column: "id_goods_id"
  add_foreign_key "operations", "id_whs"
end
