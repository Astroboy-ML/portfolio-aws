const navToggle = document.getElementById('nav-toggle');
const siteNav = document.getElementById('site-nav');
const footerYear = document.getElementById('footer-year');
const currentYear = document.getElementById('current-year');

if (navToggle && siteNav) {
  navToggle.addEventListener('click', () => {
    const expanded = navToggle.getAttribute('aria-expanded') === 'true';
    navToggle.setAttribute('aria-expanded', String(!expanded));
    siteNav.classList.toggle('show');
  });
}

document.querySelectorAll('a[href^="#"]').forEach((link) => {
  link.addEventListener('click', (event) => {
    const target = link.getAttribute('href');
    if (!target || target === '#') return;

    const section = document.querySelector(target);
    if (!section) return;

    event.preventDefault();
    section.scrollIntoView({ behavior: 'smooth', block: 'start' });

    if (siteNav && siteNav.classList.contains('show') && navToggle) {
      siteNav.classList.remove('show');
      navToggle.setAttribute('aria-expanded', 'false');
    }
  });
});

if (footerYear) {
  footerYear.textContent = new Date().getFullYear();
}

if (currentYear) {
  currentYear.textContent = new Date().getFullYear();
}
