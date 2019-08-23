document.addEventListener("DOMContentLoaded", () => {
  const schedule_days = document.querySelectorAll('.schedule-day');
  const hide_time = document.querySelectorAll('.hide_schedule')
  const slots = [...Array(6).keys()];
  const remove_class = (day) => {
    day.classList.remove('active-schedule');
    day.classList.remove('margin-schedule');
    day.classList.add('floute_class')
  }

  const even_day = (day) => {
    if(day.childNodes[1].innerText == 'Tuesday'){
      day.childNodes[3].childNodes[1].classList.add('even_day_margin')
    }else if(day.childNodes[1].innerText == 'Thursday'){
      day.childNodes[3].childNodes[1].classList.add('even_day_margin')
    }else if(day.childNodes[1].innerText == 'Saturday'){
      day.childNodes[3].childNodes[1].classList.add('even_day_margin')
    }
  }

  const event_on_day_click = (day) => {
    day.addEventListener('click', (event) => {
      even_day(day);
      schedule_days.forEach((da) => {
        remove_class(da);
      })
      day.classList.remove('floute_class');
      day.classList.toggle('active-schedule');
      hide_time.forEach((time) => {
        time.classList.add('hidden')
      })
      day.childNodes[3].classList.toggle('hidden');
      day.classList.toggle('margin-schedule');
    })
  }

  const check_if_true = (box, slot) => {
    if (box.checked) {
      slot.classList.add('active')
    } else {
      slot.classList.remove('active')
    }
  }

  if (schedule_days.length > 0) {
    schedule_days.forEach((day) => {
      event_on_day_click(day)
      const div_slot = day.querySelectorAll('.time_fork')
      const box_slot = div_slot.previousElementSibling
      div_slot.forEach((slot) => {
        slot.addEventListener('click', (event) => {
          event.currentTarget.classList.toggle('active')
        })
      })
    });
  }
});

