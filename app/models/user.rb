class User < ActiveRecord::Base
  attr_accessible :name, :address, :latitude, :longitude

  geocoded_by :address

  after_validation :geocode, :if => :address_changed?
end
