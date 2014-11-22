class HouseListingController < ApplicationController

  def index
    @houses = HouseListing.all
    @hash = Gmaps4rails.build_markers(@houses) do |house, marker|
      marker.lat house.latitude
      marker.lng house.longitude
    end
  end

  def new
    @house = HouseListing.new
  end


end
