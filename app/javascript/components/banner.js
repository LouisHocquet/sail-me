import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["🌅 vade ad mare", "⚓️ jetez l'ancre", "🏖 vamos a la playa"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
