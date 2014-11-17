### [FindMyNewHome]


### Pitch
Find the best value neighborhood for your ideals when house hunting.

### Description
Creating a search tool where you can enter in filters for what you're looking for, house price, parks, proximity of restaurants, school levels, proximity to public transportation and ideal zip codes. This will then show you the different places that match up with your search, allowing you to find the most ideal home. Once the filter is complete, sending them to a realtor.

### Target Audience
Young families looking to invest in a home and finding the perfect match without the influence of a realtor.

### Integrations

* Twitter is the easiest probably as it doesn't need a lot of personal information (birthday, etc)
* Google may also be beneficial if they give a zip code for the area.
* Google Maps (GeoCoder gem)
* http://www.zillow.com/howto/api/APIOverview.htm
* http://www.cde.state.co.us/schoolview
* http://www.greatschools.org/api/docs/main.page
* http://www.denvergov.org/maps/map/neighborhoods
* SendGrid API to send summary of saved search results
* Mashery to pull them all together if need be
* http://www.denvergov.org/maps/map/parks
* Commute Times: 15 minutes of school with certain rating 15 minutes  
NICE TO HAVE:
* http://www.denvergov.org/maps/map/afterschool
* Twilio API to send alerts for new housing
* Alan Smith project for pre-K API.

### Project Planning
Plan to Have - what features are expected to be in place by the end of the iteration
Nice to Have - if things were a bit ahead of plan, how could the features go deeper / be better
Uh oh - if things are really behind or going wrong, what cheats can be implemented or cuts made to get back on track

11/20: Checkin
Plan: Basic Rails application, deployed to VPS, bootstrap, Ruby Parsing of CSV, Acquire API keys, structure for how app should look, have a way to save search results to a profile
Nice: Ruby intake of API's, using Alan's data for pre-K
Shit: Deployed to local

11/25: Checkin
Plan: Alerts via SMS and Email for changes to listings, all APIs integrated
Nice: Alerts on Dashboard, API Integratio: School API, SG, Geocoder, Twilio and Zillow, Commute time filter
Shit:

12/1: Checkin
Plan: Cleaning up search capabilities, map views, adding neighborhood outline to search results, adding afterschool projects to lists
Nice: Cleaning up search capabilities, map views, adding neighborhood outline to search results
Shit: Things are working

12/4: Evaluations
Plan: Things are working
Nice: Shit is covered and things look nice
Shit: Bare minimum filter and search are working
