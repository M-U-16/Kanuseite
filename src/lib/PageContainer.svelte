<div class="app__page-container">
    <slot />
</div>

<style>
.app__page-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    max-width: 100%;
    padding: 3rem 0;
}

@media screen and (max-width: 700px) {
    .app__page-container {
        padding: 2rem 1.5rem;
    }
}
@media screen and (max-width: 300px) {
    .app__page-container {
        padding: 2rem 0.5rem;
    }
}
</style>