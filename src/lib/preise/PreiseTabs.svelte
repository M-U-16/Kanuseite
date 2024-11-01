<div class="app__preise-tab preise-content-box">
    <div class="preise__tabs-container">
        <button
            type="button"
            on:click={()=>setPrices("4h")}
            class:active={currentPricesText== "4h"}
        >4h</button>
        <button
            type="button"
            on:click={()=>setPrices("1-tag")}
            class:active={currentPricesText== "1-tag"}
        >1 Tag</button>
        <button
            type="button"
            on:click={()=>setPrices("3-tage")}
            class:active={currentPricesText== "3-tage"}
        >3 Tage</button>
        <button
            type="button"
            on:click={()=>setPrices("1-woche")}
            class:active={currentPricesText== "1-woche"}
        >1 Woche</button>
    </div>
    <div class="preise__tab-content">
        <div class="preise__tab-head">
            <h4>Boottyp</h4>
            <h4>Preis</h4>
        </div>
        {#each $currentPrices.data as item}
        <div
            class="preise__tab-row"
        >
            <p>{item.boat}</p>
            <div class="preise__tab-row-connecter"></div>
            <p>{item.price}&euro;</p>
        </div>
        {/each}
    </div>
</div>

<script>
    import prices from "$lib/assets/data/preise.js"
    import { writable } from "svelte/store";
    let currentPricesText = "4h"
    const currentPrices = writable(prices[currentPricesText].data)
    $: currentPrices.set(prices[currentPricesText])
    $: console.log($currentPrices)

    function setPrices(value) {
        if (value == currentPricesText) {
            return
        }
        currentPricesText = value
    }
</script>

<style>
.preise-content-box {
    background-color: rgba(227, 227, 227, 0.46);
    border-radius: 5px;
    margin: 0.5rem 0;
}

.app__preise-tab {
    padding: 2rem;
}

.preise__tab-head {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 1rem;
}

.preise__tab-head h4 {
    padding: 0.2rem 0;
}

.preise__tab-head h4:first-of-type {
    text-align: start;
}

.preise__tab-head h4:last-of-type {
    text-align: end;
}

.preise__tabs-container {
    display: flex;
    flex-wrap: wrap;
    border-bottom: 1px solid rgba(128, 128, 128, 0.475);
    padding-bottom: 0.5rem;
}

.preise__tabs-container button {
    outline: none;
    width: 100%;
    padding: 0.5rem 1rem;
    flex: 1;
    border-radius: 5px;
    border: none;
    cursor: pointer;
    transition: 0.3s ease;
    box-shadow: inset 0px 0px 2px grey;
}

.preise__tabs-container button:focus {
    box-shadow: inset 0px 0px 4px grey;
}

.preise__tab-row {
    display: grid;
    grid-template-columns: auto 1fr auto;
    place-items: center;
    animation: sideSlideIn 1s ease 1;
    opacity: 1;
    transform: translateX(0);
    font-size: 1.2rem;
    margin: 0.5rem 0;
}

.preise__tab-row-connecter {
    width: 90%;
    height: 2px;
    background-color: rgba(117, 117, 117, 0.123);
}

.preise__tab-row:nth-child(1) {
    margin-top: 1rem;
}

.preise__tabs-container .active {
    background-color: var(--secondary-clr);
    color: var(--accent-clr);
}

@keyframes sideSlideIn {
    0% {
        transform: translateX(10px);
        opacity: 0;
    }
}

@media (max-width: 600px) {
    .app__preise-tab {
        padding: 1rem;
    }
    .preise__tabs-container button {
        padding: 0.5rem;
        min-width: 100px;
    }
    .preise__tab-row {
        font-size: 1rem;
    }
}
</style>