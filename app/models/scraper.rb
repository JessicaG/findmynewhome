require 'open-uri'

class Scraper
  def grab_urls(url)
    noko = Nokogiri::HTML(open(url))
    noko.css('.title').collect {|title| title.attributes['a'].value}
  end
end
