window.addEventListener("load", function () {
  const preloader = document.getElementById("preloader");
  if (preloader) {
    setTimeout(function () {
      preloader.classList.add("hide");
    }, 350);
  }
});

const revealElements = document.querySelectorAll(".reveal");
const revealObserver = new IntersectionObserver(function (entries) {
  entries.forEach(function (entry) {
    if (entry.isIntersecting) {
      entry.target.classList.add("show");
      revealObserver.unobserve(entry.target);
    }
  });
}, { threshold: 0.12 });

revealElements.forEach(function (element) {
  revealObserver.observe(element);
});

const searchBerita = document.getElementById("searchBerita");
if (searchBerita) {
  searchBerita.addEventListener("input", function () {
    const keyword = searchBerita.value.toLowerCase().trim();
    document.querySelectorAll(".news-card").forEach(function (card) {
      const text = card.innerText.toLowerCase();
      card.style.display = text.includes(keyword) ? "block" : "none";
    });
  });
}
