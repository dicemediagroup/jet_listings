class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
    @locations = @neighborhood.locations
    @quote_request = QuoteRequest.new
  end
end
