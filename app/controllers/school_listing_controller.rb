class SchoolListingController < ApplicationController

  def index
    @shools = SchoolListing.all
    @hash = Gmaps4rails.build_markers(@schools) do |house, marker|
      marker.lat school.latitude
      marker.lng school.longitude
      marker.infowindow school.rating
      marker.title school.name
      marker.picture ({
        "url" => "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
        "width" => 32,
        "height" => 32
        })
      end
  end
