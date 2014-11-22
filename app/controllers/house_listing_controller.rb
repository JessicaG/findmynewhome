class HouseListingController < ActionController::Base

  def index
    @houses = HouseListing.all
    @hash = Gmaps4rails.build_markers(@houses) do |house, marker|
      marker.lat house.latitude
      marker.lng house.longitude
      #marker.infowindow house.title
      marker.picture({
        "url" => "/fmnh_favicon.png"
        "width" => 32,
        "height" => 32
        })
    end
  end
end
