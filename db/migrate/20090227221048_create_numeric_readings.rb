class CreateNumericReadings < ActiveRecord::Migration
  def self.up
    create_table :numeric_readings do |t|
      t.string :name
      t.float :value
      t.integer :sensor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :numeric_readings
  end
end
