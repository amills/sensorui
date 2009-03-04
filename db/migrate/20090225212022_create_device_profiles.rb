class CreateDeviceProfiles < ActiveRecord::Migration
  def self.up
    create_table :device_profiles do |t|
      t.string :name
      t.boolean :mobile_asset
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :device_profiles
  end
end
