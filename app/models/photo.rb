class Photo < ActiveRecord::Base
  belongs_to :location
  mount_uploader :image, ImageUploader
  
end
