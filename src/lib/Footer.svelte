<footer>
    <div class='footer__content'>
        <div class="footer__contact-container">
            <div class="footer__contact">
                <h1>Kontakt</h1>
                <div class="footer__column">
                    <h3 class="footer__contact-name">Adresse:</h3>
                    <p>Kienitzerstraße 19a</p>
                </div>
                <div class="footer__column">
                    <h3 class="footer__contact-name">Telefon:</h3>
                    <p>Funk: 0176 / 34600616</p>
                    <p>Tel. 033475 / 57 54 8</p>
                </div>
                <div class="footer__column">
                    <h3 class="footer__contact-name">E-mail:</h3>
                    <p>henryksiemon@web.de</p>
                </div>
                <div class="vertical-divider"></div>
            </div>
        </div>
        <div class="footer__links_open">
            <div class="footer__further-links">
                <h1>Anderes</h1>
                <a
                    href="https://www.moz.de/lokales/seelow/paddeltour-treibenlassen-auf-der-oder-ab-kienitz-stromabwaerts-50384895.html"
                    target="_blank"
                    class="footer__link"
                >Beitrag von der MOZ</a>
                <a href="/agbs" class='footer__link'>Agbs</a>
            </div>
            <div class="time-section">
                <h1>Ausleihzeiten:</h1>
                <p>Montag - Sonntag</p>
            </div>
        </div>
    </div>
    <button
      class="up-btn"
      id="up-btn"
      title="Nach Oben"
      on:click={scrollTop}
      aria-label="Nach Oben"
    >
        <svg
            stroke="currentColor"
            fill="currentColor"
            stroke-width="0"
            viewBox="0 0 384 512"
            height="1em"
            width="1em"
            xmlns="http://www.w3.org/2000/svg"
        >
            <path
                d="M214.6 9.4c-12.5-12.5-32.8-12.5-45.3 0l-128 128c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L160 109.3V480c0 17.7 14.3 32 32 32s32-14.3 32-32V109.3l73.4 73.4c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3l-128-128z"
            ></path>
        </svg>
    </button>
</footer>

<script>
    function scrollTop() {
        window.scrollTo(0, 0)
    }
</script>

<style>
footer {
    min-height: 40vh;
    background-color: black;
    color: rgb(210, 210, 210);
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
    overflow: hidden;
}
.footer__content {
    display: grid;
    grid-template-columns: 1fr 1fr;
}
.footer__content > div {
    padding: 1rem;
}
.footer__contact {
    display: flex;
    flex-direction: column;
}
.footer__column {
    margin: 0.5rem 0;
}

.footer__links_open {
    display: flex;
    flex-direction: column;
}

.footer__further-links {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
}
.footer__further-links h1 {
    font-size: 1.8rem;
}
.footer__link {
    text-decoration: none;
    color: white;
    font-size: 1.2rem;
    transition: 0.3s;
}
.footer__link:hover {
    color: var(--accent-clr);
    text-decoration: underline;
}
/* TIME SECTION */
.time-section {
    max-width: 20rem;
    margin-top: 2rem;
}

@media screen and (max-width: 700px) {
    .footer__content {
        grid-template-columns: 1fr;
        margin: 2rem 0;
    }
}

/* up button */
.up-btn {
    width: 4rem;
    height: 4rem;
    color: var(--accent-clr);
    border: none;
    border-radius: 50%;
    cursor: pointer;
    position: absolute;
    bottom: 32px;
    right: 32px;
    background-color: rgba(88, 88, 88, 0.166);
    transition: 0.3s;
    display: inline-block;
    font-size: 1.5rem;
    display: flex;
    justify-content: center;
    align-items: center;
}
.up-btn:hover {
    background-color: rgba(152, 152, 152, 0.166);
}
.up-btn:active {
    scale: 0.9;
}

@media screen and (max-width: 600px) {
    .up-btn {
        width: 3.5rem;
        height: 3.5rem;
        top: 32px;
        right: 32px;
    }
}
</style>