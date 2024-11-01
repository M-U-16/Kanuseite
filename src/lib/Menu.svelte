<svelte:document on:click={(e)=>{
    if (active && !navbar.contains(e.target)) {
        closeMenu()
    }

    firstClick = false
}} />

<nav
    class="app__side-menu"
    class:active={active}
>
    <a
        class='app__menu-link'
        on:click={closeMenu}
        href="/boote"
    >Boote</a>
    <a
        class='app__menu-link'
        on:click={closeMenu}
        href="/preise"
    >Preise</a>
    <div class="navbar-divider"></div>
    <a
        class='app__menu-link'
        href="/#kontakt"
        on:click={closeMenu}
    >Kontakt</a>
    <a
        class="app__menu-link"
        on:click={closeMenu}
        href="/#karte"
    >Standort</a>
    <slot />
</nav>

<script>
    export let active
    export let navbar
    export let closeMenu = () => {}
    let firstClick = true
</script>

<style>
.app__side-menu {
    --width: 20rem;
    --duration: 0.8s;
    --timing: ease;

    display: flex;
    flex-direction: column;
    position: fixed;
    right: 0;
    top: 0;
    overflow: hidden;
    height: 100%;
    width: var(--width);
    box-shadow: 0px 0px 2px var(--accent-clr);
    background: var(--secondary-clr);
    color: white;
    z-index: 2;
    transition:
        transform var(--duration) ease,
        -o-transform var(--duration) ease,
        -ms-transform var(--duration) ease,
        -moz-transform var(--duration) ease,
        -webkit-transform var(--duration) ease;

    -webkit-transform: translateX(100%);
    -moz-transform: translateX(100%);
    -ms-transform: translateX(100%);
    -o-transform: translateX(100%);
    transform: translateX(100%);
    
    will-change: transform;
}

.app__menu-link:nth-child(1) {
    margin-top: var(--navbar-height);
}

.app__menu-link {
    color: white;
    text-decoration: none;
    font-size: 1.5rem;
    padding: 1rem 2rem;
    transition: 0.3s ease;
    background: transparent;
}

.app__menu-link:hover {
    background: rgba(0, 0, 0, 0.222);
}

.app__side-menu.active {
    -webkit-transform: translateX(0);
    -moz-transform: translateX(0);
    -ms-transform: translateX(0);
    -o-transform: translateX(0);
    transform: translateX(0);
}

@media screen and (max-width: 700px) {
    .app__side-menu {
        --width: 100%;
    }
}

@media (min-width: 1000px) {
    .app__side-menu {
        display: none;
    }
}
</style>