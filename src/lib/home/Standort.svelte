<div class="main__map-section" id="karte">
    <h2 class="karten-heading">Unser Standort!</h2>
    <iframe
        class="karte"
        title="Google Maps Standort"
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9678.71175120868!2d14.369835542339384!3d52.665794562986086!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47077ad6a9531873%3A0x8c552b6aee63bf9f!2sKanuverleih%20am%20Oderdeich%2F%20Kanu%20Oderbruch!5e0!3m2!1sde!2sde!4v1707222641922!5m2!1sde!2sde" loading="lazy"
    ></iframe>
    <div class="main__map-link-container">
      <a
        href="https://goo.gl/maps/bE2osPFSveHajqRs7"
        target="_blank"
      >Weiter zu Google Maps</a>
    </div>
</div>

<style>
.main__map-section {
    width: 100%;
    background-color: #0d0d0de4;
    height: auto;
    position: relative;
    scroll-margin-top: var(--navbar-height);
}
.karte {
    width: 100%;
    height: 50vh;
}
.karten-heading {
    color: white;
    padding: 1rem 2rem;
    font-size: 2rem;
    letter-spacing: 2px;
    text-align: center;
    font-family: "Young Serif";
    background-color: #1d1d1d;
}
.main__map-link-container {
    height: 8rem;
    display: flex;
    align-items: center;
    align-items: center;
    position: relative;
    background-color: #1d1d1d;
}
.main__map-link-container a {
    background-color: var(--secondary-accent-clr);
    padding: 1rem;
    margin: 0 auto;
    color: white;
    border-radius: 1rem;
    text-decoration: none;
    font-size: 1.5rem;
    transition: 0.3s;
}
.main__map-link-container a:active {
    scale: 0.9;
}
@media screen and (max-width: 400px) {
    .main__map-link-container a {
        font-size: 1.1rem;
        padding: 0.8rem 2rem;
    }
    .karten-heading {
        font-size: 1.5rem;
    }
}
</style>