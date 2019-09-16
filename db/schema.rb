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

ActiveRecord::Schema.define(version: 2019_08_29_141901) do

  create_table "plans", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "id", null: false
    t.string "name"
    t.integer "provider_id", null: false
    t.integer "line_id", null: false
ActiveRecord::Schema.define(version: 2019_08_31_061253) do

  create_table "campaigns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "cp_content"
    t.bigint "provider_id", null: false
    t.date "created_at"
    t.date "updated_at"
    t.index ["provider_id"], name: "fk_rails_7644719bc7"
  end

  create_table "devices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "device_price"
    t.date "created_at"
    t.date "updated_at"
  end

  create_table "options", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "campaign_content"
    t.bigint "provider_id", null: false
    t.date "created_at"
    t.date "updated_at"
    t.index ["provider_id"], name: "fk_rails_3fedd796c7"
  end

  create_table "plans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "provider_id", null: false
    t.text "outline"
    t.integer "lineplan_id", null: false
    t.text "plan_outline"
    t.integer "construct_period"
    t.integer "total_fee"
    t.integer "plan_device_fee"
    t.integer "cancel_charge"
    t.integer "campaign_id", null: false
    t.integer "device_id", null: false
    t.integer "option_id", null: false
    t.text "plan_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "providers_id"
    t.index ["providers_id"], name: "index_plans_on_providers_id"
  end

  create_table "providers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "{:foreign_key=>true}_id"
    t.index ["{:foreign_key=>true}_id"], name: "index_providers_on_{:foreign_key=>true}_id"
  end

  end

  create_table "providers_devices", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "provider_id", null: false
    t.bigint "device_id", null: false
    t.index ["device_id"], name: "fk_rails_0884cefca4"
    t.index ["provider_id"], name: "fk_rails_00b5fc0b46"
  end

  add_foreign_key "campaigns", "providers"
  add_foreign_key "options", "providers"
  add_foreign_key "plans", "providers"
  add_foreign_key "providers_devices", "devices"
  add_foreign_key "providers_devices", "providers"
end
