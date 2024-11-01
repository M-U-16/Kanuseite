<nav class="app__top-menu">
    <a class="top__menu-link" href="/boote">Boote</a>
    <a class="top__menu-link" href="/preise">Preise</a>
    <a class="top__menu-link" href="/#karte">Standort</a>
    <a class="top__menu-cta" href="/#kontakt">Kontakt</a>
</nav>

<style>
.app__top-menu {
    display: flex;
    align-items: center;
}
.app__top-menu .top__menu-link {
    color: white;
    text-decoration: none;
    margin: 1rem;
    font-size: 1.2rem;
    transition: color 0.3s ease;
}
.app__top-menu .top__menu-link:hover {
    color: var(--accent-clr);
}
.top__menu-cta {
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 1000px;
    height: 2.5rem;
    margin: 0 1rem;
    text-decoration: none;
    font-size: 1.2rem;
    width: 7rem;
    color: white;
    background-color: #76b813;
    transition: transform 0.3s ease;
}
.top__menu-cta:active {
    transform: scale(0.9);
}
@media (max-width: 1001px) {
    .app__top-menu {
        display: none;
    }
}
</style>