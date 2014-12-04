class HouseListingController < ApplicationController

  def index
    @houses = HouseListing.where.not(zipcode: nil)
    @schools = SchoolListing.all
    places = @schools + @houses
    @hash = Gmaps4rails.build_markers(places) do |place, marker|
        marker.lat place.latitude
        marker.lng place.longitude
        marker.title place.city
        #marker.infowindow place.name
        if place.class == HouseListing
          #marker.name place.price
          marker.picture ({
            "url" => "https://s3-us-west-2.amazonaws.com/turingproject/items/images/fmnh-favicon-sm.png",
            "width" => 32,
            "height" => 22
          })
        else
          marker.picture ({
            "url" => "https://s3-us-west-2.amazonaws.com/turingproject/items/images/flag_icon.png",
            "width" => 22,
            "height" => 22
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
