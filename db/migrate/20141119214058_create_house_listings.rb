class CreateHouseListings < ActiveRecord::Migration
  def change
    create_table :house_listings do |t|
      t.string :zpid

      t.timestamps
    end
  end
end
