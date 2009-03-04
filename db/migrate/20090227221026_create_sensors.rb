class CreateSensors < ActiveRecord::Migration
  def self.up
    create_table :sensors do |t|
      t.string :name
      t.string :address
      t.integer :sensor_type_id
      t.integer :device_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sensors
  end
end
