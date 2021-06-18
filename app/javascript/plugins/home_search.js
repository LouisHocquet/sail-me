const activeCategory = (category) => {
  const categoryBtn = document.querySelector(`#category-${category}`);
  categoryBtn.classList.toggle('active');
};

const homeSearch = () => {
  const btnSearch = document.getElementById('home-search-button');
  
  const btnMotorboat = document.getElementById('category-Motorboat');
  const btnSailboat = document.getElementById('category-Sailboat');
  const inputLocation = document.getElementById('location-form-home');

  btnMotorboat.addEventListener('click', (event) => {
    activeCategory("Motorboat");
    btnSailboat.classList.remove('active');
  });
  btnSailboat.addEventListener('click', (event) => {
    activeCategory("Sailboat");
    btnMotorboat.classList.remove('active');
  });


// fonction qui change la classe du bouton en fonction de s'il est cliqué ou non
// toggle sur chaque category
// récupérer le contenu du bouton qui a la classe active
// query selector all
  btnSearch.addEventListener('click', (event) => {
    let query="/boats?query=";
    if (inputLocation.value !== '') {
      query += `${inputLocation.value}+`;
    }
    // console.log(inputLocation.value === '');
    const activeBtns = document.querySelectorAll(".active");
    if (activeBtns.length > 0) {
      for (const btn of activeBtns) {
        let content = btn.value.split(' ')[btn.value.split(' ').length - 1];
        query += `${content}`;
      }
      console.log(query);
    }
    if (query !== "/boats?query=") {
      event.currentTarget.href = query;
    }
    // console.log(activeBtns[0].attributes.value);


    // btnSearch.
    // console.log(event.currentTarget);
  });
};

export { activeCategory };
export { homeSearch };
