$(function(){
  fetchSchools();
  $('.chosen-select').chosen().change(function() {
    applyFilters();
  });

});

var fetchSchools = function(){
  $.getJSON('/api/schools', function(data){
    window.allSchools = []#data.schools
    schools.each |school|
      school.marker = new GMaps.Marker(color:, long: , lat: ) 
      window.allSchools.push(school)
    //{schools: [{...}, {...}]} 
  });
}

var applyFilters = function(){
  var selectedCities= _.map($('#city-filter option:selected'),function(option){return $(option).val()});
  var visibleMarkers = _.filter(markers, function(marker){
    return marker.serviceObject.title === selectedCities[0]
  });
  var visibleSchools = _.filter(window.allSchools, function(school){
    return school.name === selectedCities[0] 
  })
  _.each(markers, function(marker){marker.serviceObject.setVisible(false)})
  _.each(visibleMarkers, function(marker){marker.serviceObject.setVisible(true)})
  _.each(visibleSchools, function(school){school.marker.serviceObject.setVisible(true)})
}
