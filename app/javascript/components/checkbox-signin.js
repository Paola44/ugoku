const checkbox = document.getElementById('user_remember_me');

const is_checked = (checkbox, label) =>{
  if(checkbox.checked){
    label.classList.add('remember-signin-active');
    label.innerHTML = "Remember me <i class='fas fa-thumbs-up'></i>";
  }else{
    label.classList.remove('remember-signin-active');
    label.innerHTML = "Remember me"
  }
}

if(checkbox != null){
  const labelBox = checkbox.nextElementSibling
  is_checked(checkbox, labelBox)
  labelBox.addEventListener('click', (event) => {
    is_checked(checkbox, labelBox)
  })
}
