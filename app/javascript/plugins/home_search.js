const activeCategory = () => {
  const category = document.querySelector(`#category-${category}-boat.active`);
  category.classList.toggle('active');
};

const homeSearch = () => {
  const btnSearch = document.getElementById('home-search-button');
  const boatCategory = document.getElementById('home-search-category');

// fonction qui change la classe du bouton en fonction de s'il est cliqué ou non
// toggle sur chaque category
// récupérer le contenu du bouton qui a la classe active
// query selector all
  btnSearch.addEventListener('click', (event) => {
    console.log(event.currentTarget);
  });
};

export { activeCategory };
export { homeSearch };
