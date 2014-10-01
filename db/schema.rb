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

ActiveRecord::Schema.define(version: 20141001210940) do

  create_table "board_column_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "is_charted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "charts", force: true do |t|
    t.string   "name"
    t.integer  "max_x"
    t.integer  "min_x"
    t.integer  "max_y"
    t.integer  "min_y"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "country_id"
    t.string   "email"
    t.string   "web_address"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "default_board_columns", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "boardcolumn_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "default_task_types", force: true do |t|
    t.string   "name"
    t.string   "color_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_backlogs", force: true do |t|
    t.text     "content"
    t.integer  "sprint_id"
    t.integer  "point"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  add_index "product_backlogs", ["project_id"], name: "index_product_backlogs_on_project_id"

  create_table "project_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start_at"
    t.datetime "end_at"
    t.boolean  "is_active",       default: true, null: false
    t.integer  "user_id"
    t.integer  "company_id"
    t.integer  "project_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sprint_activities", force: true do |t|
    t.string   "content"
    t.integer  "spint_id"
    t.integer  "sprint_activity_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sprint_activity_types", force: true do |t|
    t.string   "name"
    t.string   "format"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sprint_board_columns", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "sprint_id"
    t.integer  "user_id"
    t.integer  "boardcolumn_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "board_column_type_id"
  end

  add_index "sprint_board_columns", ["board_column_type_id"], name: "index_sprint_board_columns_on_board_column_type_id"

  create_table "sprint_chart_records", force: true do |t|
    t.integer  "sprint_board_column_id"
    t.date     "date"
    t.integer  "task_total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sprint_states", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sprint_task_types", force: true do |t|
    t.string   "name"
    t.integer  "sprint_id"
    t.string   "color_code"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sprints", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "project_id"
    t.integer  "sprint_order_number"
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer  "sprint_state_id"
    t.integer  "creator_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_position_people", force: true do |t|
    t.integer  "task_position_id"
    t.integer  "user_id"
    t.integer  "assigner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_positions", force: true do |t|
    t.integer  "task_id"
    t.integer  "sprint_board_column_id"
    t.boolean  "is_block"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.text     "content"
    t.integer  "product_backlog_id"
    t.integer  "sprint_task_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_projects", force: true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "user_role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_roles", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "fullname"
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "email"
    t.string   "avatar"
    t.boolean  "is_active"
    t.datetime "last_access"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
