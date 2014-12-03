class SchoolListingController < ApplicationController
  respond_to :json, :html

  def index
    @schools = SchoolListing.last(10)
    respond_with @schools
  end

end
