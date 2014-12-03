class AddSchoolInfoToSchoolListings < ActiveRecord::Migration
  def change
    add_column :school_listings, :gsid, :string
    add_column :school_listings, :name, :string
    add_column :school_listings, :school_rating, :float
    add_column :school_listings, :parent_rating, :float
    add_column :school_listings, :school_type, :string
    add_column :school_listings, :grade_range, :string
    add_column :school_listings, :city, :string
    add_column :school_listings, :state, :string
    add_column :school_listings, :districtID, :float
    add_column :school_listings, :districtName, :string
    add_column :school_listings, :street_address, :string
    add_column :school_listings, :phone, :string
    add_column :school_listings, :website, :string
    add_column :school_listings, :latitude, :float
    add_column :school_listings, :longitude, :float
  end
end
