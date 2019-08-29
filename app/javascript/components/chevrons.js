const chevrons = document.querySelectorAll('.button-events')
const chevronsDown = document.querySelectorAll('.details-button')
if(chevrons != null){
  chevrons.forEach((chevron) => {
    chevron.addEventListener('click', (event) => {
      chevron.classList.add('hidden')
    })
    chevronsDown.forEach((chevronDown) => {
      chevronDown.addEventListener('click', (event) => {
        chevron.classList.remove('hidden')
      })
    })
  })
}
