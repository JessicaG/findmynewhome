class AddAddressToHouseListings < ActiveRecord::Migration
  def change
    add_column :house_listings, :street, :string
    add_column :house_listings, :zipcode, :string
    add_column :house_listings, :city, :string
    add_column :house_listings, :state, :string
    add_column :house_listings, :latitude, :string
    add_column :house_listings, :longitude, :string
  end
end
