class AddHouseLinkToHouseListings < ActiveRecord::Migration
  def change
    add_column :house_listings, :home_link, :string
  end
end
