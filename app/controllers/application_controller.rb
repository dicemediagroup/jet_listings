class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  @neighborhoods = Neighborhood.all
  before_action :init_neighborhood
  
  private
  
  def init_neighborhood
    @neighborhoods = Neighborhood.all
  end
  
end
