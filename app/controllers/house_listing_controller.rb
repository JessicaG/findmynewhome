class HouseListingController < ApplicationController

  def index
    @houses = HouseListing.last(10)
    @schools = SchoolListing.all
    @hash = Gmaps4rails.build_markers(@houses) do |house, marker|
      marker.lat house.latitude
      marker.lng house.longitude
      marker.infowindow house.street
      marker.title house.city
      #marker.name house.price
      marker.picture ({
        "url" => "https://s3-us-west-2.amazonaws.com/turingproject/items/images/fmnh-favicon-sm.png",
        "width" => 32,
        "height" => 32
        })
      end
    #@hash = HouseMarkers.build(@houses)
    #@hash.merge(SchoolMarkers.build(@schools))
  end

  def new
    @house = HouseListing.new
  end

  def show
    source = HouseListing.find(params[:id])
    @house_listing = HouseListingDecorater.new(source)
  end


end
