<button
    class="hamburger-button"
    class:active={active}
    id="navbar-hamburger-btn"
    on:click={toggleMenu}
    aria-label="Menü öffnen"
>
    <span class="hamburger-layer"></span>
    <span class="hamburger-layer"></span>
    <span class="hamburger-layer"></span>
</button>

<script>
    export let active
    export let toggleMenu = () => {}
</script>

<style>
/* hamburger menu */
.hamburger-button {
    display: flex;
    cursor: pointer;
    position: relative;
    flex-direction: column;
    background-color: transparent;
    border: none;
    width: 2.8rem;
    height: 2rem;
    margin-right: 1rem;
    z-index: 3;
    overflow: hidden;
    outline: none;
}
.hamburger-layer {
    display: block;
    width: 100%;
    height: 4px; 
    background: var(--accent-clr);
    position: absolute;
    right: 0;
    margin-left: auto; margin-right: auto;
    transition: translate 0.3s ease;
}
.hamburger-button span:nth-child(1) {
    top: 2px;
}
.hamburger-button span:nth-child(2) {
    top: 50%;
    transform: translateY(-50%);
    /* translate: 10px; */
}
.hamburger-button span:nth-child(3) {
    bottom: 2px;
}

/* ACTIVESTATE */
.hamburger-button:hover span:nth-child(2) {
    translate: 10px;
}

.hamburger-button.active span:nth-child(1) {
    top: 50%;
    transform:
        translateY(-50%)
        rotate(45deg);
    width: 110%;
}

.hamburger-button.active span:nth-child(2) {
    opacity: 0;
}

.hamburger-button.active span:nth-child(3) {
    bottom: 50%;
    transform:
        translateY(50%)
        rotate(-45deg);
    width: 110%;
}

@media (min-width: 1000px) {
    .hamburger-button {
        display: none;
    }
}
</style>