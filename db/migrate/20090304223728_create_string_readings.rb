class CreateStringReadings < ActiveRecord::Migration
  def self.up
    create_table :string_readings do |t|
      t.string :name
      t.string :value
      t.integer :sensor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :string_readings
  end
end
