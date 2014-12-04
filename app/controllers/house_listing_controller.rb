class HouseListingController < ApplicationController

  def index
    @houses = HouseListing.last(10)
    @schools = SchoolListing.last(10)
    places = @schools + @houses
    @hash = Gmaps4rails.build_markers(places) do |place, marker|
        marker.lat place.latitude
        marker.lng place.longitude
        marker.title place.city
        if place.class == HouseListing
          marker.infowindow place.street
          marker.title place.city
          #marker.name place.price
          marker.picture ({
            "url" => "https://s3-us-west-2.amazonaws.com/turingproject/items/images/fmnh-favicon-sm.png",
            "width" => 32,
            "height" => 32
          })
      end
    end
  end

  def new
    @house = HouseListing.new
  end

  def show
    source = HouseListing.find(params[:id])
    @house_listing = HouseListingDecorater.new(source)
  end


end
