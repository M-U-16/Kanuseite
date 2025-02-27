<section class="contact-section" id="kontakt">
    <div class="contact">
        <h1>Kontaktdaten</h1>
        <h2>Wie Sie Uns erreichen</h2>

        <div class="contact__section-wrapper">
            <div class="contact__row">
                <h3 class="contact-name">Adresse:</h3>
                <div class="contact__column">
                    <p>Henryk Siemon-Ueberfeld</p>
                    <p>Kienitzer Str. 19a</p>
                    <p>15324 Letschin</p>
                </div>
            </div>
            <div class="contact__row">
                <h3 class="contact-name">Telefon:</h3>
                <div class="contact__column">
                    <p>Funk: 0176 / 34600616</p>
                    <p>Tel. 033475 / 57 54 8</p>
                </div>
            </div>
            <div class="contact__row">
                <h3 class="contact-name">E-mail:</h3>
                <div class="contact__column">
                    <p>henryksiemon@web.de</p>
                </div>
            </div>
        </div>
    </div>

    <div class="contact__container-img">
        <img src="/images/aiBild1.webp" alt="" />
    </div>
</section>

<style>
.contact-section {
    min-height: 50vh;
    display: flex;
    margin: auto;
    flex-direction: contact__row;
    justify-content: center;
    align-items: center;
    scroll-margin-top: var(--navbar-height);
}
.contact {
    padding: 2rem;
    background: rgb(18, 18, 18);
    border-radius: 1rem;
    height: 25rem;
    color: white;
    display: flex;
    flex-direction: column;
    justify-content: center;
    margin: 4rem 0rem;
}
.contact h1 {
    color: var(--accent-clr);
    font-size: 3rem;
    font-family: "Young Serif", serif, Arial;
}
.contact h2 {
    font-size: 1.2rem;
    transform: translateY(-10px);
    padding-bottom: 0.2rem;
    font-weight: 400;
    width: 20rem;
    color: var(--subheading-clr);
    border-bottom: 1px dashed rgba(128, 128, 128, 0.477);
    margin-bottom: 0.2rem;
}
.contact__row {
    display: grid;
    grid-template-columns: 1fr 1fr;
    margin: 1rem;
    font-size: 1.5rem;
}
/* section img */
.contact__container-img {
    height: 20rem;
}
.contact__container-img img {
    border-radius: 0rem 1rem 1rem 0rem;
    height: 100%;
    object-fit: cover;
}

@media screen and (max-width: 950px) {
    .contact {
        height: 20rem;
        padding: 1rem;
        border-top-right-radius: 0;
        border-bottom-right-radius: 0;
    }
    .contact h1 {
        color: var(--accent-clr);
        font-size: 2rem;
        
    }
    .contact__row {
        margin: 0.5rem;
        font-size: 1.2rem;
    }

    .contact__container-img {
        height: 20rem;
    }
    .contact__container-img img {
        border-top-right-radius: 1rem;
        border-bottom-right-radius: 1rem;
        height: 100%;
        object-fit: cover;
    }
}
@media screen and (max-width: 850px) {
    .contact-section {
        min-height: auto;
    }
    .contact {
        margin: 0;
        border-radius: 0;
        width: 100%;
    }
    .contact__container-img {
        height: 20rem;
    }
    .contact__container-img img {
        border-radius: 0;
        height: 100%;
    }
}
@media screen and (max-width: 650px) {
    .contact-section {
        flex-direction: column;
    }
    .contact__container-img {
        height: 15rem;
        width: 100%;
    }
    .contact__container-img img {
        width: 100%;
        object-fit: cover;
    }
}
@media screen and (max-width: 450px) {
    .contact__section-wrapper {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .contact {
        height: 25rem;
    }
    .contact h1,
    .contact h2 {
        text-align: center;
    }
    .contact h2 {
        width: 100%;
    }
    .contact__row {
        grid-template-columns: 1fr;
        font-size: 1rem;
        width: 80%;
    }
    .contact-name {
        text-align: center;
    }
    .contact__row p {
        padding-top: 0.2rem;
        text-align: center;
    }
}
</style>