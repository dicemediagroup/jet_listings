class Location < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :features
  has_many :photos
    
end
