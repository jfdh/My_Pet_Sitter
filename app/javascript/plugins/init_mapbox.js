import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import { map } from 'jquery';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 2000 });
};

const initMapbox = () => {
  // const mapelement = document.getElementById('map');
  const maps = document.querySelectorAll('.user-map');
  const apiKey = document.getElementById('cards').dataset.mapboxApiKey

  maps.forEach(currentMap => {
    if (currentMap) { // only build a map if there's a div#map to inject into
      mapboxgl.accessToken = apiKey;
      const map = new mapboxgl.Map({
        container: currentMap.attributes.id.value,
        style: 'mapbox://styles/eelhagnow/ckw4twv1714x314lc14m8p8pj'
      });
      // const markers = JSON.parse(curentMap.dataset.markers);
      // markers.forEach((marker) => {
      console.log(currentMap)
      const position = JSON.parse(currentMap.dataset.position)
      const content = currentMap.dataset.popup
      const image = currentMap.dataset.image

      const popup = new mapboxgl.Popup().setHTML(content);

      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${image}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '40px';
      element.style.height = '40px';

      new mapboxgl.Marker(element)
        .setLngLat(position)
        .setPopup(popup)
        .addTo(map);

        map.setCenter(position)
      map.setZoom(12)
      map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                          mapboxgl: mapboxgl }));
    }
  })
};

export { initMapbox };
