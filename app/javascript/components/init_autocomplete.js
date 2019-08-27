import places from 'places.js';
const addressInput = document.getElementById('user_address');
if (addressInput) {
  places({ container: addressInput });
}
