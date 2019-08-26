// document.addEventListener("DOMContentLoaded", () => {
//   const choices = document.querySelectorAll('.category-choice');

//   if (choices.length > 0) {
//     choices.forEach((choice) => {
//       choice.addEventListener('click', (event) => {
//         choice.classList.toggle('active')
//       });
//     });
//   }
// });

document.addEventListener("DOMContentLoaded", () => {
  const choices = document.querySelectorAll('.js-category-choice-wrapper');

  if (choices.length > 0) {
    choices.forEach((choice) => {
      const label = choice.querySelector('.category-choice')
      // const input = choice.querySelector('input')

      label.addEventListener('click', (event) => {
        label.classList.toggle('active')
      });
    });
  }
});
