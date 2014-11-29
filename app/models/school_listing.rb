class SchoolListing < ActiveRecord::Base

  def school_list
    Faraday.get("http://api.greatschools.org/schools/nearby?key=ENV[GSCHOOLID]&city=#{@city}&state=CO")
  end

  def parsed_school_information
    doc = Nokogiri::XML(school_list)
    begin
      self.gsid = doc.at('gsID').content
      self.name = doc.at('name').content
      self.school_rating = doc.at('gsRating').content
      self.parent_rating = doc.at('parentRating').content
      self.type = doc.at('type').content
      self.grade_range = doc.at('gradeRange').content
      self.city = doc.at('city').content
      self.state = doc.at('state').content
      self.districtID = doc.at('districtID').content
      self.districtName = doc.at('district').content
      self.street_address = doc.at('address').content
      self.phone = doc.at('phone').content
      self.website = doc.at('website').content
      self.latitude = doc.at('lat').content
      self.longitude = doc.at('long').content
      self.price = doc.at('amount currency').to_s
      self.save!
    rescue
      puts "THIS RECORD IS BLANK #{self}"
    end
  end

  def parsed_school_rating
  end


end
