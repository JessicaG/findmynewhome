class AddAddressToHouseListings < ActiveRecord::Migration
  def change
    add_column :house_listings, :street, :string
    add_column :house_listings, :zipcode, :string
    add_column :house_listings, :city, :string
    add_column :house_listings, :state, :string
    add_column :house_listings, :latitude, :float
    add_column :house_listings, :longitude, :float
  end
end
