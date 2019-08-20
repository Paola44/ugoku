document.addEventListener("DOMContentLoaded", () => {
  const choices = document.querySelectorAll('.category-choice');

  if (choices.length > 0) {
    choices.forEach((choice) => {
      choice.addEventListener('click', (event) => {
        choice.classList.toggle('active')
      });
    });
  }
});
