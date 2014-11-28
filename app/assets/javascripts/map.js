$(function(){
  $('.chosen-select').chosen().change(function() {
    applyFilters();
  });

});

var applyFilters = function(){
  var selectedCities= _.map($('#city-filter option:selected'),function(option){return $(option).val()});
  console.log(selectedCities)

  visibleMarkers = markers//underscore reduce to filter markers in one of the selected cities
  _.each(markers, function(marker){marker.serviceObject.setVisible(false)})
  _.each(visibleMarkers, function(marker){marker.serviceObject.setVisible(true)})
}
