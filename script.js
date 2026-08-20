// Naresh Dhori Portfolio interactions
(function () {
  const nav = document.getElementById('nav');
  const navToggle = document.getElementById('navToggle');
  const navLinks = document.getElementById('navLinks');

  window.addEventListener('scroll', function () {
    nav.classList.toggle('scrolled', window.scrollY > 24);
  }, { passive: true });

  navToggle.addEventListener('click', function () {
    navLinks.classList.toggle('open');
  });

  navLinks.querySelectorAll('a').forEach(function (link) {
    link.addEventListener('click', function () {
      navLinks.classList.remove('open');
    });
  });

  const sections = document.querySelectorAll('section[id], header[id]');
  const navItems = document.querySelectorAll('.nav-links a[href^="#"]');
  const observer = new IntersectionObserver(function (entries) {
    entries.forEach(function (entry) {
      if (!entry.isIntersecting) return;
      navItems.forEach(function (item) {
        item.classList.toggle('active', item.getAttribute('href') === '#' + entry.target.id);
      });
    });
  }, { rootMargin: '-35% 0px -55% 0px' });
  sections.forEach(function (section) { observer.observe(section); });

  const revealItems = document.querySelectorAll('.timeline-item, .project-card, .achievement-card, .skill-category, .dashboard-card, .platform-highlights > div, .cert-card');
  const reduceMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
  if (!reduceMotion) {
    revealItems.forEach(function (el, i) {
      el.style.opacity = '0';
      el.style.transform = 'translateY(18px)';
      el.style.transition = 'opacity .5s ease ' + Math.min(i * .035, .35) + 's, transform .5s ease ' + Math.min(i * .035, .35) + 's';
    });
    const revealObserver = new IntersectionObserver(function (entries) {
      entries.forEach(function (entry) {
        if (!entry.isIntersecting) return;
        entry.target.style.opacity = '1';
        entry.target.style.transform = 'translateY(0)';
        revealObserver.unobserve(entry.target);
      });
    }, { threshold: .08 });
    revealItems.forEach(function (el) { revealObserver.observe(el); });
  }
})();
