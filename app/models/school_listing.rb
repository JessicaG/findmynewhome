class SchoolListing < ActiveRecord::Base


  def school_list
    Faraday.get("http://api.greatschools.org/schools/nearby?key=#{ENV['GSCHOOLID']}&city=Denver&state=CO")
  end

  def parsed_school_information
    doc = Nokogiri::XML(school_list.body)
    begin
      self.gsid = doc.at('school').at('gsId').content
      self.name = doc.at('school').at('name').content
      self.school_rating = doc.at('school').at('gsRating').content
      self.parent_rating = doc.at('school').at('parentRating').content
      self.school_type = doc.at('school').at('type').content
      self.grade_range = doc.at('school').at('gradeRange').content
      self.city = doc.at('school').at('city').content
      self.state = doc.at('school').at('state').content
      self.districtID = doc.at('school').at('districtId').content
      self.districtName = doc.at('school').at('district').content
      self.street_address = doc.at('school').at('address').content
      self.phone = doc.at('school').at('phone').content
      self.website = doc.at('school').at('website').content
      self.latitude = doc.at('school').at('lat').content
      self.longitude = doc.at('school').at('lon').content
      self.save!
    rescue
      puts "THIS RECORD IS BLANK #{self}"
    end
  end

  def parsed_school_rating
  end


end
