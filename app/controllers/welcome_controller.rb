class WelcomeController < ApplicationController

  def index
    @houses = HouseListing.last(50)
    @hash = Gmaps4rails.build_markers(@houses) do |house, marker|
      marker.lat house.latitude
      marker.lng house.longitude
      marker.infowindow house.street
      marker.picture ({
        "url" => "https://s3-us-west-2.amazonaws.com/turingproject/items/images/fmnh-favicon-sm.png",
        "width" => 32,
        "height" => 32
        })
    end
  end

  def about
  end

  def code
  	redirect_to "https://github.com/jessicag/findmynewhome"
  end
end
