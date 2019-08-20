const next = document.getElementById('next-sign-up')
const part1 = document.getElementById('form-part1')
const part2 = document.getElementById('form-part2')
const back = document.getElementById('back-sign-up')

if(next != null){
  next.addEventListener('click', (event) => {
    if (part2.classList.contains('hidden')){
      part1.classList.add('hidden');
      part2.classList.remove('hidden');
    }
  });
}

if(back != null){
  back.addEventListener('click', (event) => {
    if (part1.classList.contains('hidden')){
      part2.classList.add('hidden');
      part1.classList.remove('hidden');
    }
  });
}
