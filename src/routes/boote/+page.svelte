<main>
    <PageContainer>
        <PageContentContainer>
        <h1 class="default-heading"><HomeLink /> Boote</h1>
        <article>
          <div class="boote__article-verleih">
            <div class="boote__img-container">
              <img src="/images/aiBild6.jpg" alt="" />
            </div>
            <div class="boote__article-text">
              <p>
                Zum Verleih stehen 2er Kajaks der Firma Perception und
                verschiedene Canadier der
                Firma Hasle zum Verleih bereit.
              </p>
            </div>
          </div>
        </article>
        <article class="boote__about">
          <h1>Über unsere Boote:</h1>
          <div class='boote__about-container'>
            <p><BooteIndicator /> baubedingt sehr kippstabil</p>
            <p><BooteIndicator /> leicht zu beherrschen durch guten geradeaus Lauf</p>
            <p><BooteIndicator /> große Einstiegsluke</p>
            <p><BooteIndicator /> Schalensitze mit Rückenlehne bzw. Gurtflechtsitze</p>
          </div>
        </article>
        <article class="boote__article-description">
          <p>
            Unsere Boote sind außerdem alle mit Sicherheitsabschottungen
            oder Auftriebskörpern ausgestattet,
            damit im Falle des Kenterns das
            Boot nicht sinkt. Gepäck,
            das in der Sicherheitsabschottung aufbewahrt wird,
            ist nicht 100%ig vor Wasser geschützt. Deshalb sollte mitgeführtes Gepäck gesondert in wasserdichten Packsäcken verpackt sein.
            Diese können sie bei Bedarf bei uns kostenlos erhalten. Weiterhin stellen wir Kartenmaterial, Handytaschen und natürlich Schwimmwesten zur Verfügung.
          </p>
        </article>
        </PageContentContainer>  
    </PageContainer>
</main>

<script>
import HomeLink from "$lib/buttons/HomeLink.svelte"
import PageContainer from "$lib/PageContainer.svelte"
import PageContentContainer from "$lib/PageContentContainer.svelte"
import BooteIndicator from "$lib/icons/BooteIndicator.svelte";
</script>

<style>
.boote__article-verleih {
    display: grid;
    grid-template-columns: 1fr 1fr;
    margin-bottom: 1rem;
    filter: drop-shadow(0px 0px 1px grey);
}
.boote__img-container img {
    border-radius: 1rem 0 0 1rem;
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.boote__article-text {
    padding: 1rem;
    background-color: var(--grey-background);
    border-radius: 0 1rem 1rem 0;
    line-height: 1.5;
    padding: 1.5rem;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 1.3rem;
}
.boote__about {
    width: 100%;
}
.boote__about-container p {
    display: flex;
    align-items: center;

    padding: 1rem;
    margin: 0.8rem 0;
    font-size: 1.2rem;
    background-color: var(--grey-background);
    border-radius: 5px;
}
.boote__article-description p {
    font-size: 1.2rem;
    line-height: 1.7;
}

@media screen and (max-width: 700px) {
    .boote__article-verleih {
        grid-template-columns: 1fr;
    }
    .boote__img-container {
        height: 15rem;
    }
    .boote__article-verleih img{
        width: 100%;
        height: 100%;
        border-radius: 1rem 1rem 0 0;
    }
    .boote__article-text {
        border-radius: 0 0 1rem 1rem;
    }
}   
</style>