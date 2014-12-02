class HouseListingController < ApplicationController

  def index
    @houses = HouseListing.where.not(zipcode: nil)
    @hash = Gmaps4rails.build_markers(@houses) do |house, marker|
      marker.lat house.latitude
      marker.lng house.longitude
      marker.infowindow house.street
      marker.title house.city
      marker.picture ({
        "url" => "https://s3-us-west-2.amazonaws.com/turingproject/items/images/fmnh-favicon-sm.png",
        "width" => 32,
        "height" => 32
        })
      end
  end

  def new
    @house = HouseListing.new
  end


end
