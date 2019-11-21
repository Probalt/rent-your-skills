const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-skills');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-skills-white');
      } else {
        navbar.classList.remove('navbar-skills-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
