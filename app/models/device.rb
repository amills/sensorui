class Device < ActiveRecord::Base
  belongs_to :device_profile
  has_many :sensors
end
