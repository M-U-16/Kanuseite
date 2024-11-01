{#if loaded && !clicked}
<div class='app__popup'>
    <p class="app__popup-text">
        Lesen sie die 
        <a class='app__popup-link'
        href="/agbs"
        on:click={clicked=true}
    >
        AGB's
        </a> und
        informieren sie sich über die Rechtslage!
    </p>
    <button
        class="app__popup-button"
        on:click={clicked=true}
    >
        <IoClose />
    </button>
</div>
{/if}

<script>
    import { onMount } from "svelte";

    let clicked = false
    let loaded = false

    onMount(()=>{
        if (localStorage.getItem("clicked-popup")) {
            clicked = true
        }
        clicked = false
    })

    /* $: {
        console.log(clicked)
        localStorage.setItem("clicked-popup", true)
    } */
</script>

<style>
.app__popup {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background: var(--secondary-clr);
    color: white;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0px 0px 5px black;
    height: 3rem;

}
.app__popup-text {
    padding: 1rem;
    z-index: 3;
    font-size: 1rem;
}
.app__popup-text a {
    color: var(--accent-clr);
}
.app__popup-button {
    width: 3rem;
    height: 3rem;
    font-size: 1.8rem;
    cursor: pointer;
    background: transparent;
    border: none;
    color: var(--accent-clr);
    display: flex;
    justify-content: center;
    align-items: center;
}
</style>