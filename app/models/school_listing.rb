class SchoolListing < ActiveRecord::Base

  def school_list
    Faraday.get("http://api.greatschools.org/schools/nearby?key=#{ENV['GSCHOOLID']}&city=Denver&state=CO")
  end

  def schools
    doc = Nokogiri::XML(school_list.body)
    doc.css('school')
  end

  def build_schools
    schools.each do |school|
      SchoolListing.build_from_doc(school)
    end
  end

  def self.build_from_doc(school)
    #require 'pry'
    #binding.pry
    begin
    attrs = {
      gsid: school.at('gsId').content,
      name: school.at('name').content,
      school_rating: school.at('gsRating').content,
      #parent_rating: school.at('parentRating').content,
      #school_type: school.at('type').content,
      grade_range: school.at('gradeRange').content,
      city: school.at('city').content,
      state: school.at('state').content,
      #districtID: school.at('districtId').content,
      #districtName: school.at('district').content,
      street_address: school.at('address').content,
      phone: school.at('phone').content,
      #website: school.at('website').content,
      latitude: school.at('lat').content,
      longitude: school.at('lon').content
    }
    rescue
    #require 'pry'
    #binding.pry
    end
    new(attrs).save
  end

  # def build_school(schools)
  #   @school = []
  #     doc.css('school').each do |s|
  #       value s.at('gsId').content
  #     @school << value
  #     end
  # end

  # def parsed_school_information
  #   doc = Nokogiri::XML(school_list.body)
  #   require 'pry'
  #   binding.pry
  #   begin
  #
  #     self.gsid = doc.css('school').at('gsId').content
  #     self.name = doc.css('school').at('name').content
  #     self.school_rating = doc.css('school').at('gsRating').content
  #     #self.parent_rating = doc.at('school').at('parentRating').content
  #     #self.school_type = doc.at('school').at('type').content
  #     #self.grade_range = doc.at('school').at('gradeRange').content
  #     #self.city = doc.at('school').at('city').content
  #     #self.state = doc.at('school').at('state').content
  #     #self.districtID = doc.at('school').at('districtId').content
  #     #self.districtName = doc.at('school').at('district').content
  #     #self.street_address = doc.at('school').at('address').content
  #     #self.phone = doc.at('school').at('phone').content
  #     #self.website = doc.at('school').at('website').content
  #     #self.latitude = doc.at('school').at('lat').content
  #     #self.longitude = doc.at('school').at('lon').content
  #     self.save!
  #   rescue
  #     puts "THIS RECORD IS BLANK #{self}"
  #   end
  # end

end
