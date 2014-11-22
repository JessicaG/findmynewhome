class HouseListingController < ActionController::Base

  def index
    @houses = HouseListing.all
    @hash = Gmaps4rails.build_markers(@houses) do |house, marker|
      marker.lat house.latitude
      marker.lng house.longitude
    end
    binding.pry
  end
end
