<section class="app__boote-section default-container">
    <div class="home__boote-wrapper default-article">
      <h1>Erfahren Sie mehr über unsere Boote!</h1>
      <LinkButton href="/boote">Boote</LinkButton> 
    </div>
</section>

<style>
.home__boote-wrapper {
    background: var(--secondary-clr);
    color: white;
    border-radius: 1rem;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding: 2rem;
    height: 13rem;
    box-shadow: 0px 0px 5px rgba(79, 79, 79, 0.651);
}

.home__boote-wrapper h1 {
    max-width: 25rem;
    text-align: center;
}
</style>

<script>
    import LinkButton from "$lib/buttons/LinkButton.svelte"
</script>