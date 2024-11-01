<div
    class="navbar"
    id="navbar"
    class:active={active}
    bind:this={navbar}
>
    <div class="navbar__container-right">
        <a
          title='Zur Startseite'
          class="navbar__logo-container"
          href="/"
          aria-label="Zur Startseite"
        >
            <img src="/logo.svg" alt="Logo" />
        </a>
        <div class="navbar__heading-wrapper">
            <h1 class="navbar__heading">Kanuverleih</h1>
            <h2 class="navbar__subheading">am Oderdeich</h2>
        </div>
    </div>
    <div class="navbar__container-left">
        <MenuButton
          toggleMenu={toggleMenu}
          active={active}
        />
    </div>
    <Menu
        active={active}
        navbar={navbar}
        closeMenu={closeMenu}
    >
        <slot />
    </Menu>
    <TopMenu></TopMenu>
</div>

<script>
    import Menu from "$lib/Menu.svelte"
    import TopMenu from "$lib/TopMenu.svelte"
    import MenuButton from "$lib/buttons/MenuButton.svelte"

    let navbar
    let active = false

    function closeMenu() {
        active = false
    }

    function toggleMenu() {
        active = !active
    }
</script>

<style>
.navbar {
    background: var(--secondary-clr);
    height: var(--navbar-height);
    width: 100%;
    position: fixed;
    top: 0;
    left: 0;
    display: flex;
    justify-content: space-between;
    align-items: center;
    z-index: 5;
    box-shadow: 0px 0px 5px var(--accent-clr);
}

.navbar__container-right {
    display: flex;
    align-items: center;
    z-index: 3;
}

.navbar__heading {
    font-size: 1.9rem;
    font-family: 'Kaushan Script', cursive;
    color: var(--accent-clr);
}

.navbar__subheading {
    color: rgb(255, 222, 156);
    font-size: 1.1rem;
    font-style: italic;
    font-weight: 400;
    transform: translateY(-10px); /* transform little bit higher */
}

.navbar__logo-container {
    margin: 1rem 0.5rem 1rem 1rem;
    width: 3rem;
    height: 3rem;
    background: linear-gradient(45deg, var(--accent-clr) 5%, white 75%);
    border-radius: 50%;
}

.navbar__logo-container img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.navbar__container-left {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 1rem;
}

@media screen and (max-width: 800px) {
    .navbar__heading {
        font-size: 2rem;
    }
}

@media screen and (max-width: 300px) {
    .navbar__heading,
    .navbar__subheading {
        display: none;
    }
    .navbar__logo-container {
        margin: 0.5rem;
        width: 3rem;
        height: 3rem;
    }
}
</style>