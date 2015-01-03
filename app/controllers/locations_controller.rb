class LocationsController < ApplicationController
  def index
    @locations  = Location.all
  end

  def show
    @location = Location.find(params[:id])
    @photos   = @location.photos.order(desirability: :desc)
    @amenities = @location.neighborhood.amenities
  end
end
