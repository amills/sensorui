class CreateDevices < ActiveRecord::Migration
  def self.up
     create_table :devices, :force => true do |t|
      t.string   :name,                :limit => 75
      t.string   :imei,                :limit => 30
      t.string   :phone_number,        :limit => 20
      t.integer  :provision_status_id, :limit => 2,  :default => 0
      t.datetime :last_online_time
      t.integer  :online_threshold,    :limit => 11, :default => 90
      t.integer  :device_profile_id,   :limit => 11, :default => 1,  :null => false
      t.string   :gateway_name,        :limit => 50
      t.timestamps
    end
  end

  def self.down
    drop_table :devices
  end
end
