<div
    class="app__priceV2-container default-container"
>
    <article class='default-article'>
        <div class="priceV2-img-container">
            <img src="/images/aiBild4.jpg" alt="" />
        </div>
        <div class="priceV2-content">
            <h3>Erfahren Sie mehr über die Preise</h3>
            <LinkButton href="/preise">Preise</LinkButton>
        </div>
    </article>
</div>

<script>
    import LinkButton from "$lib/buttons/LinkButton.svelte"
</script>

<style>
.app__priceV2-container article {
    display: grid;
    grid-template-columns: 1fr 2fr;
    height: 17rem;
}
.priceV2-content {
    color: white;
    background-color: var(--secondary-clr);
    width: 100%;
    height: 100%;
    border-radius: 0 1rem 1rem 0;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding: 1rem;
}
.priceV2-img-container {
    height: 100%;
    width: 100%;
    overflow: hidden;
    border-radius: 1rem 0 0 1rem;
    border: 5px solid var(--accent-clr);
    box-shadow: 0px 0px 3px rgba(0, 255, 21, 0.719);
}
.priceV2-img-container img {
    object-fit: cover;
    width: 100%;
    height: 100%;
}

/* .app__price-link {
    margin: 1rem 0;
    padding: 1rem;
    color: white;
    text-decoration: none;
    width: 10rem;
    text-align: center;
    background-color: var(--accent-clr);
    border-radius: 1rem;
    transition: 0.3s;
}
.app__price-link:active {
    scale: 0.9;
} */

@media screen and (max-width: 850px) {
    .app__priceV2-container article {
        grid-template-columns: 1fr;
        gap: 0;
        height: 15;
    }
    .priceV2-content {
        border-radius: 0 0 1rem 1rem;
    }
    .priceV2-img-container {
        height: 100%;
        border-radius: 1rem 1rem 0 0;
    }
}
</style>