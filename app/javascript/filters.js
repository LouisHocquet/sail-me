const displayBookings = () => {

const btnMyBookings = document.getElementById("btn-my-bookings");
const btnManageBookings = document.getElementById("btn-manage-bookings");
const containerMyBookings = document.getElementById("my-bookings-container");
const containerManageBookings = document.getElementById("manage-bookings-container");
containerManageBookings.style.display = 'none';
btnMyBookings.addEventListener('click', (event) => {
  event.currentTarget.classList.add('btn-actif');
  btnManageBookings.classList.remove('btn-actif');
  containerManageBookings.style.display = 'none';
  containerMyBookings.style.display = null;
})
btnManageBookings.addEventListener('click', (event) => {
  event.currentTarget.classList.add('btn-actif');
  btnMyBookings.classList.remove('btn-actif');
  containerMyBookings.style.display = 'none';
  containerManageBookings.style.display = null;
})
}

export { displayBookings };
