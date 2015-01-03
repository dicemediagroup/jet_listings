class Photo < ActiveRecord::Base
  belongs_to :location
  mount_uploader :image, ImageUploader
  
  def rank_by_desirability
    order("desirability")
  end
end
