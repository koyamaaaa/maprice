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

ActiveRecord::Schema.define(version: 2019_09_18_133423) do

  create_table "campaigns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "cp_content", null: false
    t.bigint "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_capacities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "device_price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "service_id"
    t.index ["service_id"], name: "index_devices_on_service_id"
  end

  create_table "net_lines", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "service_id"
    t.index ["service_id"], name: "index_net_lines_on_service_id"
  end

  create_table "plans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "p_content", null: false
    t.string "construct_period", null: false
    t.integer "total_fee", null: false
    t.integer "plan_device_fee", null: false
    t.text "plan_url", null: false
    t.bigint "campaign_id", null: false
    t.bigint "plan_device_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "net_line_id"
    t.bigint "service_id"
    t.bigint "data_capacity_id"
    t.bigint "provider_id"
    t.index ["campaign_id"], name: "fk_rails_2dd293748a"
    t.index ["data_capacity_id"], name: "index_plans_on_data_capacity_id"
    t.index ["net_line_id"], name: "index_plans_on_net_line_id"
    t.index ["plan_device_id"], name: "fk_rails_17f43c7d24"
    t.index ["provider_id"], name: "index_plans_on_provider_id"
    t.index ["service_id"], name: "index_plans_on_service_id"
  end

  create_table "plans_devices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "plan_id", null: false
    t.integer "device_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "service_id"
    t.index ["service_id"], name: "index_providers_on_service_id"
  end

  create_table "services", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "devices", "services"
  add_foreign_key "net_lines", "services"
  add_foreign_key "plans", "campaigns"
  add_foreign_key "plans", "data_capacities"
  add_foreign_key "plans", "net_lines"
  add_foreign_key "plans", "plans_devices", column: "plan_device_id"
  add_foreign_key "plans", "providers"
  add_foreign_key "plans", "services"
  add_foreign_key "providers", "services"
end
