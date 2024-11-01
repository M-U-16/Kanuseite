<header class="main__header">
    <section class="welcom-section">
      <div class="text-content">
        <div class="header__headings">
          <h1>Kanu- und Kajaktouren</h1>
          <h2>im Oderbruch</h2>
        </div>
        <p>
          Erleben Sie auf unseren Booten
          die Natur des Oderbruchs bei Fahrten auf der
          Oder und ihren Nebenflüssen.
        </p>
      </div>
    </section>
</header>

<style>
.main__header {
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start;
    position: relative;
    overflow: hidden;
}
.welcom-section {
    color: white;
    max-width: 60rem;
    width: 80%;
    position: relative;
    z-index: 2;
    font-size: 1.2rem;
    display: grid;
    grid-template-columns: 1fr;
    margin-top: 4rem;
    margin-bottom: 4rem;
}
.text-content {
    display: flex;
    border-radius: 10px;
    flex-direction: column;
    background: linear-gradient(45deg, var(--secondary-clr), black);
    padding: 2rem;
}
.text-content p {
    color: rgb(215, 215, 215);
    font-weight: 300;
    font-size: 1rem;
    max-width: 25rem;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
}
.header__headings {
    margin-bottom: 0.5rem;
}
.welcom-section h1 {
    font-size: clamp(3rem, 3vw, 5rem);
    color: var(--accent-clr);
    font-family: 'Young Serif', serif;
    line-height: 1;
}
.welcom-section h2 {
    font-size: clamp(1.2rem, 2vw, 2rem);
    color: wheat;
    font-weight: 400;
    /* font-size: 1.2rem; */
    margin-bottom: 0.5rem;
}

@media screen and (max-width: 650px) {
    .main__header {
        justify-content: flex-start;
        min-height: auto;
    }
    /* --------------------------- */
    .welcom-section {
        width: 100%;
        padding: 1.5rem;
        border-radius: 0;
        height: 20rem;
        display: flex;
        justify-content: center;
        align-items: center;
        box-shadow: none;
        margin-top: 0;
        margin-bottom: 0;
    }

}

@media (max-width: 450px) {
    .welcom-section {
        padding: 0;
        height: 100%;
    }
    .text-content {
        padding: 2rem 1.2rem 2rem 1.2rem;
        border-radius: 0;
    }
    .welcom-section h1 {
        font-size: 2rem;
    }
}
</style>