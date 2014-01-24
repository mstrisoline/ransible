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

ActiveRecord::Schema.define(version: 20131130024941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "groups", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["id"], name: "index_groups_on_id", unique: true, using: :btree

  create_table "host_vars", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "key",        null: false
    t.string   "value",      null: false
    t.string   "host_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "host_vars", ["id"], name: "index_host_vars_on_id", unique: true, using: :btree

  create_table "hosts", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name",       null: false
    t.string   "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plays", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plays", ["id"], name: "index_plays_on_id", unique: true, using: :btree

  create_table "roles", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["id"], name: "index_roles_on_id", unique: true, using: :btree

  create_table "users", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "email",           null: false
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["id"], name: "index_users_on_id", unique: true, using: :btree

end
