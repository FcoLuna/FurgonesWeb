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

ActiveRecord::Schema.define(version: 20151114005259) do

  create_table "parents", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "apellido",   limit: 255
    t.integer  "telefono",   limit: 4
    t.string   "rut",        limit: 255
    t.integer  "pago",       limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "parents", ["user_id"], name: "index_parents_on_user_id", using: :btree

  create_table "schools", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.integer  "telefono",   limit: 4
    t.string   "direccion",  limit: 255
    t.string   "comuna",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "stundents", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "apellido",   limit: 255
    t.string   "rut",        limit: 255
    t.string   "jornada",    limit: 255
    t.string   "direccion",  limit: 255
    t.string   "comuna",     limit: 255
    t.integer  "parent_id",  limit: 4
    t.integer  "van_id",     limit: 4
    t.integer  "school_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "stundents", ["parent_id"], name: "index_stundents_on_parent_id", using: :btree
  add_index "stundents", ["school_id"], name: "index_stundents_on_school_id", using: :btree
  add_index "stundents", ["van_id"], name: "index_stundents_on_van_id", using: :btree

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
    t.string   "tipo_user",              limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vans", force: :cascade do |t|
    t.string   "patente",     limit: 255
    t.integer  "capacidad",   limit: 4
    t.string   "estado",      limit: 255
    t.integer  "kilimetrage", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string   "nombre",          limit: 255
    t.string   "apellido",        limit: 255
    t.string   "rut",             limit: 255
    t.string   "tipo_trabajador", limit: 255
    t.integer  "sueldo",          limit: 4
    t.integer  "van_id",          limit: 4
    t.integer  "user_id",         limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "workers", ["user_id"], name: "index_workers_on_user_id", using: :btree
  add_index "workers", ["van_id"], name: "index_workers_on_van_id", using: :btree

  add_foreign_key "parents", "users"
  add_foreign_key "stundents", "parents"
  add_foreign_key "stundents", "schools"
  add_foreign_key "stundents", "vans"
  add_foreign_key "workers", "users"
  add_foreign_key "workers", "vans"
end
