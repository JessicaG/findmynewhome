class AddZestimateToHouseListings < ActiveRecord::Migration
  def change
    add_column :house_listings, :price, :integer
  end
end
