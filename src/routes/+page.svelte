<main>
    <section class="info-section">
        <div class="info-container">
            <h2>Achtung!</h2>
            <p>
                Bis zum <b>30.08.2025</b> können keine Kanutouren
                gebucht werden.
            
            </p>
        </div>
    </section>
    <Header />
    <Region />
    <div class='default-container'>
    <Accordion />
    </div>
    <Preise />
    <Boote />
    <Kontakt />
    <Standort />
</main>
<Footer />
<Popup />
    
<script>
    import Header from "$lib/home/Header.svelte"
    import Region from "$lib/home/Region.svelte"
    import Kontakt from "$lib/home/Kontakt.svelte"
    import Popup from "$lib/Popup.svelte"
    import Standort from "$lib/home/Standort.svelte"
    import Boote from "$lib/home/Boote.svelte"
    import Preise from "$lib/home/Preise.svelte"
    import Accordion from "$lib/home/Accordion.svelte";
    import Footer from "$lib/Footer.svelte"
</script>

<style>
.info-section {
    padding: 1rem 1rem 0 1rem;
    display: flex;
    justify-content: center;   
}

.info-container {
    background-color: rgb(255, 230, 230);
    border: 1px solid red;
    padding: 1rem;
    border-radius: 5px;
    max-width: 60rem;
    width: 80%;
}

@media screen and (max-width: 650px) {
    .info-container {
        width: 100%;
    }
}

@media (max-width: 450px) {
    .info-section {
        padding: 0;
    }

    .info-container {
        border-radius: 0;
    }
}
</style>