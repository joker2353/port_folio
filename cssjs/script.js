function toggleMenu() {
    const menu = document.querySelector(".menu-links");
    const icon = document.querySelector(".hamburger-icon");
    menu.classList.toggle("open");
    icon.classList.toggle("open");
}


window.addEventListener("load", function () {
    const faderss = document.querySelectorAll('.experience-details-container');

    const appearOptions = {
        threshold: 0.2,
        rootMargin: "0px 0px -100px 0px"
    };


    const appearOnScroll1 = new IntersectionObserver(function (entries, appearOnScroll1) {
        entries.forEach(entry => {
            if (!entry.isIntersecting) {
                return;
            } else {
                entry.target.classList.add("appear1");
                appearOnScroll1.unobserve(entry.target);
            }
        })
    }, appearOptions);

    faderss.forEach(fader => {
        appearOnScroll1.observe(fader);
    });
});