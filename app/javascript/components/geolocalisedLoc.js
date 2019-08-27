var geoTools = require('geo-tools');
const geolocalised = document.getElementById('geolocalised')
const input = document.getElementById('user_address')
const GOOGLEMAPS_API_KEY = 'AIzaSyB90B0kSt4RWtV-l74PbX8VNPmLf_M2N7c'
const mapBasedUrl = "https://maps.googleapis.com/maps/api/geocode/json?";


const reverse = (apiUrl) => {
  fetch(apiUrl)
   .then(response => response.json())
   .then((data) => {
     input.value = data.results[0].formatted_address;
   });
}


if(geolocalised != null){
  geolocalised.addEventListener('click', (event) => {
    navigator.geolocation.getCurrentPosition((data) => {
      const lat = data.coords.latitude;
      const lon = data.coords.longitude;
      const apiUrl = `${mapBasedUrl}latlng=${lat},${lon}&key=${GOOGLEMAPS_API_KEY}&location_type=GEOMETRIC_CENTER`;
      reverse(apiUrl);
    });
  })
}
