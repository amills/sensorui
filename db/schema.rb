# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090304223728) do

  create_table "device_profiles", :force => true do |t|
    t.string   "name"
    t.boolean  "mobile_asset"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", :force => true do |t|
    t.string   "name",                :limit => 75
    t.string   "imei",                :limit => 30
    t.string   "phone_number",        :limit => 20
    t.integer  "provision_status_id", :limit => 2,  :default => 0
    t.datetime "last_online_time"
    t.integer  "online_threshold",                  :default => 90
    t.integer  "device_profile_id",                 :default => 1,  :null => false
    t.string   "gateway_name",        :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "location_readings", :force => true do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "altitude"
    t.float    "speed"
    t.float    "direction"
    t.integer  "sensor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "numeric_readings", :force => true do |t|
    t.string   "name"
    t.float    "value"
    t.integer  "sensor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sensor_types", :force => true do |t|
    t.string   "name"
    t.string   "data_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sensors", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "sensor_type_id"
    t.integer  "device_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "string_readings", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "sensor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
