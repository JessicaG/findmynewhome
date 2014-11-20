require 'open-uri'
class HouseListingImporter
  #todo add alias for script to not get kicked off
  def import(first_page, last_page)
    #todo dynamically generate number based on how many zillow results there are
   zillow_result_urls(first_page, last_page).each do |url|
     ids_from_url(url).each {|zpid| HouseListing.find_or_create_by(zpid: zpid)}
     sleep(10)
     puts "Collected from a URL, sleeping for 10 seconds"
   end
  end

  def ids_from_url(url)
    noko = Nokogiri::HTML(open(url))
    noko.css('#search-results article').collect{|article| article.attributes['id'].value.gsub('zpid_','') }
  end

  def zillow_result_urls(first_page, last_page)
    (first_page..last_page).collect {|i| "http://www.zillow.com/homes/for_sale/CO/10_rid/days_sort/41.541478,-101.925659,36.412442,-109.176636_rect/6_zm/#{i}_p/" } 
  end
  
    
end
