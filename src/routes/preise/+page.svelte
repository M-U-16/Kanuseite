<main>
    <PageContainer>
      <PageContentContainer>
        <div class="app__preise-container">
            <h1 class='default-heading app__preise-heading'>
                <HomeLink />
                Preise 
                <span class="app__preise-year">{currentYear}</span>
            </h1>
          <PreiseTabs />
          <article class="app__preise-transport preise-content-box">
            <h2><ArrowIndicator /> Transport</h2>
            <p>
              Wir transportieren Sie mit den Booten zur Einlassstelle
              und holen Sie nach Absprache wieder ab.
              Transportkosten werden zusätzlich mit <span>1&euro;</span> pro km berechnet.
            </p>
            <p>
              Aufgrund der Entfernungen zu den Ein-und Auslassstellen entstehen unterschiedlich hohe Kosten.
            </p>
          </article>
        </div>
      </PageContentContainer>
    </PageContainer>
</main>

<script>
    import ArrowIndicator from "$lib/icons/BooteIndicator.svelte"
    import PreiseTabs from "$lib/preise/PreiseTabs.svelte";
    import HomeLink from "$lib/buttons/HomeLink.svelte"
    import PageContainer from "$lib/PageContainer.svelte"
    import PageContentContainer from "$lib/PageContentContainer.svelte"

    let currentYear = new Date().getFullYear()
</script>

<style>
.app__preise-container h2 {
    display: flex;
    align-items: center;
    color: rgb(35, 35, 35);
}

.app__preise-heading {
    display: flex;
    justify-content: center;
}


.app__preise-container article {
    padding: 1rem;
}

.app__preise-container article p {
    padding: 0.5rem 1rem 0.5rem 1.7rem;
}

.app__preise-transport h2 {
    display: flex;
    align-items: center;
}

.app__preise-transport span {
    color: rgb(0, 140, 0);
    font-weight: 700;
}

.app__preise-year {
    display: inline-block;
    opacity: 1;
    animation: slideIn 0.5s 1;
    margin-left: 0.5rem;
}

.preise-content-box {
    background-color: rgba(227, 227, 227, 0.46);
    border-radius: 5px;
    margin: 0.5rem 0;
}

@keyframes slideIn {
    0% {
        transform: translateY(5px);
        opacity: 0;
    }
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}

@media (max-width: 600px) {
    .app__preise-container article p {
        padding: 0.2rem;
        margin: 0;
    }
}
</style>