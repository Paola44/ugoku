import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers, fontMap) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(fontMap.dataset.position);
};

const fontMaps = document.querySelectorAll('.js-selector')

const mapElement = document.getElementById('map');

if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    fontMaps.forEach((fontMap) => {
      const markers = JSON.parse(mapElement.dataset.markers);
      markers.forEach((marker) => {
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .addTo(map)
      });
      fontMap.addEventListener('click', (event) => {
        const coordinates = JSON.parse(fontMap.dataset.position)
        console.log(coordinates)
        map.jumpTo({
          center: [coordinates[1], coordinates[0]],
          zoom: 15
        })
      })
    })
}
