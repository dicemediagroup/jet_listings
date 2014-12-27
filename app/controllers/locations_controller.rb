class LocationsController < ApplicationController
  def index
  end

  def show
    @location = Location.find(params[:id])
    @amenities = @location.neighborhood.amenities
  end
end
