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

ActiveRecord::Schema.define(version: 20151208202619) do

  create_table "categories", force: :cascade do |t|
    t.integer  "codigo",     limit: 4
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "rut",        limit: 255
    t.string   "nombre",     limit: 255
    t.string   "direccion",  limit: 255
    t.integer  "fono",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.decimal  "cantidad",              precision: 10
    t.date     "fecha"
    t.integer  "customer_id", limit: 4
    t.integer  "material_id", limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "deliveries", ["customer_id"], name: "index_deliveries_on_customer_id", using: :btree
  add_index "deliveries", ["material_id"], name: "index_deliveries_on_material_id", using: :btree

  create_table "details", force: :cascade do |t|
    t.decimal  "cantidad",             precision: 10
    t.decimal  "hh",                   precision: 10
    t.integer  "product_id", limit: 4
    t.integer  "invoice_id", limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "details", ["invoice_id"], name: "index_details_on_invoice_id", using: :btree
  add_index "details", ["product_id"], name: "index_details_on_product_id", using: :btree

  create_table "invoices", force: :cascade do |t|
    t.integer  "codigo",      limit: 4
    t.date     "fecha"
    t.decimal  "neto",                  precision: 10
    t.decimal  "bruto",                 precision: 10
    t.integer  "customer_id", limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "invoices", ["customer_id"], name: "index_invoices_on_customer_id", using: :btree

  create_table "mat_prods", force: :cascade do |t|
    t.integer  "cantidad",    limit: 4
    t.integer  "material_id", limit: 4
    t.integer  "product_id",  limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "mat_prods", ["material_id"], name: "index_mat_prods_on_material_id", using: :btree
  add_index "mat_prods", ["product_id"], name: "index_mat_prods_on_product_id", using: :btree

  create_table "materials", force: :cascade do |t|
    t.integer  "codigo",     limit: 4
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "codigo",      limit: 4
    t.string   "nombre",      limit: 255
    t.integer  "category_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  create_table "users", force: :cascade do |t|
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
    t.string   "username",               limit: 255
    t.string   "permission_level",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
