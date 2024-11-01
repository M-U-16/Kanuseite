<div class="app__accordion-wrapper default-article">
    <div class='app__accordion'>
        <h1 class="app__accordion-heading">Touren Vorschläge</h1>
        <div class="app__accordion-panel"
            class:active-accordion={panel=="panel-one"}
        >
            <button
                class="app__accordion-btn"
                on:click={() => togglePanel("panel-one")}
            >
                <span>Tagestour</span>
                <Indicator />
            </button>
            <div class="app__accordion-content">
                <div class="app__accordion-content-container">
                    <div class="empty-line-divider"></div>
                    <p>
                    Beginn der Tour ist in Küsterin -Kietz.
                    Anreise ist entweder direkt aus Berlin Lichtenberg
                    mit der Regionalbahn möglich oder mit unserem Kanutransport.
                    Von Küstrin- Kietz geht es gemütlich nach Kienitz (17km) oder Groß Neuendorf (20km).
                    Dort endet die Fahrt am Maschienenhaus.
                    Für sehr sportliche besteht natürlich die Möglichkeit die Tour fortzusetzen.
                    </p>
                    <div class="empty-line-divider"></div>
                </div>
            </div>
        </div>
        <div class="app__accordion-panel"
            class:active-accordion={panel=="panel-two"}
        >
            <button
                class="app__accordion-btn"
                on:click={() => togglePanel("panel-two")}
            >
                <span>Zwei-Tagestouren</span>
                <Indicator />
            </button>
            <div class="app__accordion-content">
            <div class="app__accordion-content-container">
                <div class="empty-line-divider"></div>
                <p>
                Regulärer Start dieser Tour ist in Lebus,
                bei guter Kondition und zeitiger Abfahrt wäre jedoch auch ein Ablegen in Frankfurt (Oder) möglich.
                Die erste Tagesetappe endet dann in Kuhbrücke,
                einem Ortsteil von Küstrin-Kietz,
                wo am Fischereihof Schneider,
                direkt am Deich, Kräfte für den nächsten Tag gesammelt werden können.
                Dort befindet sich ein Campingplatz und feste Unterkünfte.
                </p>
                <div class="empty-line-divider"></div>
            </div>
            </div>
        </div>
        <div class="app__accordion-panel"
            class:active-accordion={panel=="panel-three"}
        >
            <button
                class="app__accordion-btn"
                on:click={() => togglePanel("panel-three")}
            >
                <span>Individuelle Touren</span>
                <Indicator />
            </button>
            <div class="app__accordion-content">
            <div class="app__accordion-content-container">
                <div class="empty-line-divider"></div>
                <p>
                Aufgrund unserer langjährigen Erfahrungen in der Region,
                erstellen wir gern gemeinsam mit Ihnen Individuelle Touren nach Ihren Wünschen und Vorstellungen.
                Auch kombiniert mit Ihren Rädern.
                </p>
                <div class="empty-line-divider"></div>
            </div>
            </div>
        </div>
    </div>
</div>

<script>
    import Indicator from "$lib/icons/Indicator.svelte";

    let panel = ""
    function togglePanel(newPanel) {
        if (newPanel == panel) {
            panel = ""
            return
        }

        panel = newPanel
    }
</script>

<style>
.app__accordion {
    --duration: 0.5s;
    --panel-padding: 2rem;
    
    padding: 1rem 2rem 2rem 2rem;

    border-radius: 1rem;
    overflow: hidden;
    background-color: var(--secondary-clr);
    
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.app__accordion-heading {
    color: var(--accent-clr);
    font-family: "Young Serif";
    margin-bottom: 1rem;
}
.app__accordion-btn {
    cursor: pointer;
    outline: none;
    width: 100%;
    border-radius: 5px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: var(--panel-padding);
    font-size: 1.2rem;
    background: transparent;
    border: none;
    color: var(--accent-clr);
    background-color: rgb(30, 30, 30);
    border-bottom: 2px solid rgb(43, 43, 43);
    border-top: 2px solid transparent;
    border-left: 2px solid transparent;
    border-right: 2px solid transparent;
}
.app__accordion-btn:focus {
    transition: border 0.3s ease;
    border:2px solid rgb(43, 43, 43) ;
}
.app__accordion-content {
    display: grid;
    grid-template-rows: 0fr;

    transition:
        grid-template-rows var(--duration) ease,
        -o-grid-template-rows var(--duration) ease,
        -ms-grid-template-rows var(--duration) ease,
        -moz-grid-template-rows var(--duration) ease,
        -webkit-grid-template-rows var(--duration) ease;

}
.active-accordion .app__accordion-content {
    grid-template-rows: 1fr;
}
.app__accordion-content-container {
    color:  rgb(231, 231, 231);
    overflow: hidden;
    padding: 0 var(--panel-padding);
}
.empty-line-divider {
    height: 1rem;
    width: 100%;
}

:global(.app_accordion-indicator) {
    transition: transform 0.3s ease;
    transform: rotate(0deg);
}

:global(.active-accordion .app__accordion-indicator) {
    transform: rotate(180deg);
}

@media (max-width: 600px) {
    .app__accordion {
        --panel-padding: 1.5rem;
    }
}
@media (max-width: 450px) {
    .app__accordion-wrapper {
        width: 100%;
    }
    .app__accordion {
        border-radius: 0;
    }
}
</style>