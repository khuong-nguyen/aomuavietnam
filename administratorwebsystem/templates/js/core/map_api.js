function geoEncode() {
    var geocoder = new google.maps.Geocoder();
    var address = $("#address").val();

   if (geocoder) {
      geocoder.geocode({ 'address': address }, function (results, status) {
         if (status == google.maps.GeocoderStatus.OK) {
            searchLocationsNear(results[0].geometry.location);
         }
         else {
            console.log("Geocoding failed: " + status);
         }
      });
   } 
}

function searchLocationsNear(center) {
     $("#lat").val(center.lat());
     $("#lng").val(center.lng() );
}
