class CreateSchoolListings < ActiveRecord::Migration
  def change
    create_table :school_listings do |t|

      t.timestamps
    end
  end
end
