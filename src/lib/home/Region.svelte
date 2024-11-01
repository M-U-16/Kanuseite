<section class="region__section">
    <article class='default-article'>
      <div class="region__img-container">
        <img src="/images/aiKarte.webp" alt="" />
      </div>
      <div class="region__text-container">
        <h1>Wohin?</h1>
        <p>
          Sie wollen raus auf's Wasser,
          aber wissen nicht wohin?
        </p>
        <p>
          Perfekt, denn wir beraten sie basierend auf userern Erfahrungen und ihrem Können!
        </p>
      </div>
    </article>
</section>

<style>
.region__section {
    display: flex;
    justify-content: center;
    align-items: center;
}
.region__section article {
    display: grid;
    grid-template-columns: 1fr 1fr;
}
.region__img-container {
    width: 100%;
    height: 20rem;
    background-color: white;
    border-radius: 1rem 0 0 1rem;
    overflow: hidden;
    aspect-ratio: 1 / 1;
    display: flex;
    justify-content: center;
    align-items: center;
    box-shadow: 0px 0px 2px grey;
}
.region__img-container img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.region__text-container {
    display: flex;
    justify-content: center;
    height: 100%;
    flex-direction: column;
    background: var(--grey-background);
    filter: drop-shadow(0px 0px 1px grey);
    border-radius: 0 1rem 1rem 0;
}
.region__text-container h1 {
    font-family: "Young Serif";
    font-size: 2rem;
    padding-left: 2rem;
}
.region__text-container p {
    font-size: 1.3rem;
    line-height: 1.5;
    padding: 1rem 2rem 0.2rem 2rem;
    padding-top: 0.5rem;
}
.region__text-container p:last-child {
    margin-bottom: 1rem;
}
@media screen and (max-width: 850px) {
    .region__section article {
        grid-template-columns: 1fr;
        grid-template-rows: 1fr 1fr;
        height: 25rem;
        gap: 0;
    }
    .region__img-container {
        margin: 0 auto;
        margin-bottom: 2rem;
        width: 100%;
        height: 100%;
        border-radius: 1rem 1rem 0 0;
    }
    .region__text-container {
        border-radius: 0 0 1rem 1rem;
    }
    .region__text-container h1 {
        padding-top: 1rem;
    }
}
@media (max-width: 450px) {
    .region__section article {
        padding: 0;
        margin: 0;
        width: 100%;
        border-radius: 0;
        height: 30rem;
    }
    .region__text-container,
    .region__img-container {
        border-radius: 0;
    }
}
@media (max-width: 300px) {
    .region__text-container h1 {
        padding: 1rem 0 0 1rem;
        font-size: 1.5rem;
    }
    .region__text-container p {
        padding: 0 1rem 1rem 1rem;
    }
}
</style>