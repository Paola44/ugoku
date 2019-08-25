const alert_d = document.getElementById('success-alert');

if(alert_d != null){
  const removeElem = (elem) => {
    elem.style.display = 'none';
  }
  setTimeout(function(){ removeElem(alert_d) }, 3000);
}
