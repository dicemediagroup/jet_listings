class LocationsController < ApplicationController
  def index
    @locations  = Location.all
    @quote_request = QuoteRequest.new
    
  end

  def show
    @location = Location.find(params[:id])
    @photos   = @location.photos.order(desirability: :desc)
    @amenities = @location.neighborhood.amenities
    @quote_request = QuoteRequest.new
    
  end
end
