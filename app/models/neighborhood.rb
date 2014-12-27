class Neighborhood < ActiveRecord::Base
  has_many :locations
  has_many :amenities
end
