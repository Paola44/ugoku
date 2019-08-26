const geolocalised = document.getElementById('geolocalised')
const input = document.getElementById('user_address')

if(geolocalised != null){
  geolocalised.addEventListener('click', (event => {
    navigator.geolocation.getCurrentPosition((data) => {
      lat = data.coords.latitude;
      lon = data.coords.longitude;
      input.value = `[${lat}, ${lon}]`
    });
  }))
}
