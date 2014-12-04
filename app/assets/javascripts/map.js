$(function(){
  $('.chosen-select').chosen().change(function() {
    applyFilters();
  });
});
var applyFilters = function(){
  var selectedCities= _.map($('#city-filter option:selected'),function(option){return $(option).val()});
  var visibleMarkers= _.filter(markers, function(marker){
    return marker.serviceObject.title === selectedCities[0]
  });
  _.each(markers, function(marker){marker.serviceObject.setVisible(false)})
  _.each(visibleMarkers, function(marker){marker.serviceObject.setVisible(true)})
}
