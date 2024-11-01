<a href="/" class='app__homepage-link'>
    <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M13 14l-4 -4l4 -4"></path><path d="M8 14l-4 -4l4 -4"></path><path d="M9 10h7a4 4 0 1 1 0 8h-1"></path></svg>
    <span>Startseite</span>
</a>

<style>
.app__homepage-link {
    font-family: Arial, Helvetica, sans-serif;
    text-decoration: none;
    color: white;
    top: 50%;
    left: 1rem;
    transform: translateY(-50%);
    font-size: 1.2rem;
    font-weight: 400;
    position: absolute;
    transition: 0.3s ease;
    padding: 0.5rem;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 1rem;
}
.app__homepage-link span {
    margin: 0.2rem;
}
@media screen and (max-width: 500px) {
    .app__homepage-link {
        font-size: 1.5rem;
    }
    .app__homepage-link span {
        display: none;
    }
}
</style>