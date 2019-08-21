document.addEventListener("DOMContentLoaded", () => {
  const schedule_days = document.querySelectorAll('.schedule-day');
  const hide_time = document.querySelectorAll('.hide_schedule')

  const remove_class = (day) => {
    day.classList.remove('active-schedule');
    day.classList.remove('margin-schedule');
  }

  const remove_click = (day) => {
    remove_class(day);
    day.childNodes[5].classList.add('hidden');

  }

  if (schedule_days.length > 0) {
    schedule_days.forEach((day) => {
      day.addEventListener('click', (event) => {
        if(day.classList.contains('active-schedule')){
          remove_click(day);
        }else{
          schedule_days.forEach((da) => {
            remove_class(da);
          })
          day.classList.toggle('active-schedule');
          hide_time.forEach((time) => {
            time.classList.add('hidden')
          })
          day.childNodes[5].classList.toggle('hidden');
          day.classList.toggle('margin-schedule');
        }
      });
    });
  }
});

