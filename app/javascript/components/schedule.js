document.addEventListener("DOMContentLoaded", () => {
  const schedule_days = document.querySelectorAll('.schedule-day');
  const hide_time = document.querySelectorAll('.hide_schedule')
  const slots = [...Array(6).keys()];
  const remove_class = (day) => {
    day.classList.remove('active-schedule');
    day.classList.remove('margin-schedule');
  }

  const even_day = (day) => {
    if(day.childNodes[1].innerText == 'Tuesday'){
      day.childNodes[3].classList.add('even_day_margin')
    }else if(day.childNodes[1].innerText == 'Thursday'){
      day.childNodes[3].classList.add('even_day_margin')
    }else if(day.childNodes[1].innerText == 'Saturday'){
      day.childNodes[3].classList.add('even_day_margin')
    }
  }

  if (schedule_days.length > 0) {
    schedule_days.forEach((day) => {
      day.addEventListener('click', (event) => {
        even_day(day);
        schedule_days.forEach((da) => {
          remove_class(da);
        })
        day.classList.toggle('active-schedule');
        hide_time.forEach((time) => {
          time.classList.add('hidden')
        })
        day.childNodes[3].classList.toggle('hidden');
        day.classList.toggle('margin-schedule');
        slots.forEach((num) => {
          let var_day = day.childNodes[1].attributes.value.textContent
          const slot = document.getElementById(`availabilities_${var_day}_slot_${num + 1}`)
          slot.addEventListener('click', (event) => {
            slot.classList.toggle('active')
          })
        })
      });
    });
  }
});

