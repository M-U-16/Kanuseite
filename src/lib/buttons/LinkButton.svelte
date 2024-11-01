<a
    class='app__link-button'
    href={href}
>
    <slot />
</a>

<script>
    export let href
</script>

<style>
.app__link-button {
    text-decoration: underline;
    color: white;
    margin: 1rem 0 0 0;
    padding: 1rem;
    background-color: var(--accent-clr);
    width: 10rem;
    text-align: center;
    border-radius: 10px;
    font-size: 1.2rem;
}
</style>