import mapboxgl from 'mapbox-gl';


const fontMaps = document.querySelectorAll('.js-selector')

const mapElement = document.getElementById('map');

if (mapElement) {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/kebseth/cjzuxfj070nbp1cphugepyazh'
  });
  fontMaps.forEach((fontMap) => {
    fontMap.addEventListener('click', (event) => {
      mapElement.dataset.marker = fontMap.dataset.position
      const marker = JSON.parse(mapElement.dataset.marker);
      const coordinates = JSON.parse(fontMap.dataset.position)
      new mapboxgl.Marker()
          .setLngLat([ marker[1], marker[0] ])
          .addTo(map)
      map.jumpTo({
        center: [coordinates[1], coordinates[0]],
        zoom: 15
      })
    })
  })
}
