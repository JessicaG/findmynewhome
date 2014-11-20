class HouseListing < ActiveRecord::Base
  
  #property = Rubillow::HomeValuation.zestimate({ :zpid => '48749425' })
  #if property.success?
   # puts property.price
  #end })
  def populate_property
    property = Rubillow::HomeValuation.zestimate({ :zpid => zpid })
    if property.success?
      listing = Net::HTTP.get(URI.parse("http://www.zillow.com/webservice/GetZestimate.htm?zws-id=#{ENV['ZWSID']}&zpid=#{zpid}"))    
    end
    doc = Nokogiri::XML(listing)
    street = doc.at('street')
    zipcode = doc.at('zipcode')
    city = doc.at('city')
    state = doc.at('state')
    latitude = doc.at('latitude')
    longitude = doc.at('longitude')
    price = doc.at('amount currency')
    save!
  end


end
