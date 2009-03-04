class CreateSensorTypes < ActiveRecord::Migration
  def self.up
    create_table :sensor_types do |t|
      t.string :name
      t.string :data_type

      t.timestamps
    end
  end

  def self.down
    drop_table :sensor_types
  end
end
