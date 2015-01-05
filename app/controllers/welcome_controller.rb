class WelcomeController < ApplicationController
  def index
    @locations = Location.all.reverse_order.in_groups_of(3, false)
    @locations_first_three = @locations.shift
  end
end
