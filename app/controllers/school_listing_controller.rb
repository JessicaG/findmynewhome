class SchoolListingController < ApplicationController
respond_to :json

  def index
    @schools = SchoolListing.all
    respond_with @schools
  end

end
