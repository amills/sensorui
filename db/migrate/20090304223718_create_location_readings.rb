class CreateLocationReadings < ActiveRecord::Migration
  def self.up
    create_table :location_readings do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.float :altitude
      t.float :speed
      t.float :direction
      t.integer :sensor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :location_readings
  end
end
