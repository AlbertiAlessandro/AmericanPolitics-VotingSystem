<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Political Parties in the United States</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            line-height: 1.6;
            background-color: #f2f2f2;
        }
        .container {
            width: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            margin: 0 auto; /* Aggiunto per centrare il contenitore */
            max-width: 1200px; /* Limitato la larghezza del contenitore principale */
            padding: 0 20px; /* Aggiunto spazio ai lati */
        }

        .introsection {
            text-align: center;
            color: #fff; /* colore testo bianco */
            padding: 0 20px;
            width: 100%; /* Larghezza al 100% */
            top: 0; /* Allinea all'inizio dello schermo */
            left: 0; /* Allinea all'inizio dello schermo */
        }

        h1 {
            font-size: 4em;
            color: black;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }
        .party {
            width: 100%; /* Utilizza tutta la larghezza del contenitore */
            background-color: floralwhite;
            padding: 15px;
            border-radius: 5px;
            margin-top: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex; /* Modifica per allineare il testo e lo slideshow */
            flex-direction: row; /* Modifica per allineare il testo e lo slideshow in due colonne */
        }
        .party h2 {
            margin-top: 0;
            color: #333;
        }
        .party ul {
            list-style-type: none;
            padding: 0;
        }
        .party ul li {
            margin-bottom: 10px;
        }

        /* Modifica lo stile dei bottoni */
        .button button {
            padding: 15px 30px;
            border: 2px solid black;
            border-radius: 10px;
            cursor: pointer;
            background-color: #fff; /* Bianco */
            color: black;
            font-size: 1em;
            font-weight: bold;
            transition: all 0.3s ease-in-out;
            margin: 5px; /* Spaziatura tra i bottoni */
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1); /* Ombra leggera */
        }

        /* Effetto hover per i bottoni */
        .button button:hover {
            background-color: lightcoral; /* Verde lime */
            color: #fff; /* Bianco */
        }

        /* Posiziona i bottoni sopra e sotto l'h1 */
        .button-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            width: 80%; /* Larghezza massima del contenitore dei bottoni */
            margin: 0 auto; /* Centra il contenitore dei bottoni */
        }



        /* Stili CSS per il carousel */
        .slideshow-container {
            width: 30%; /* Ridimensionato lo spazio del carousel */
            position: relative;
            margin-left: auto; /* Spostato a destra */
            margin-top: 15px; /* Aggiunto margine superiore */
            border: 8px solid black; /* Aggiunto bordo con colore */
            border-radius: 5px; /* Arrotondato i bordi */
            overflow: hidden; /* Nasconde parte dell'immagine che supera il bordo */
        }

        .mySlides {
            display: none;
        }

        /* Stili CSS per l'immagine e il testo sotto */
        .slide-img {
            width: 100%; /* Ridimensionate le immagini per occupare l'intera larghezza dello slideshow */
            height: 100%; /* Modificata l'altezza in base all'immagine */
            object-fit: cover; /* Riempi l'area mantenendo le proporzioni */
        }

        .slide-text {
            text-align: center;
            padding: 10px 0;
        }

        /* Stili CSS per l'immagine nella parte inferiore destra */
        .watermark {
            position: absolute;
            bottom: 0.5px;
            right: 5px;
            width: 50px;
            height: auto;
        }

        figcaption.slide-text {
            text-align: center;
            font-style: italic;
            font-size: 14px;
            color: #333;
        }

        .logo-list {
            list-style-type: none;
            padding: 0;
        }

        .logo-list li {
            margin-bottom: 10px;
        }

        .logo-list img {
            max-width: 100px;
            height: auto;
        }

        .usa-flag {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 50px; /* Adjust the size as needed */
            height: auto;
        }

    </style>
</head>
<body>
<div class="container">
    <div class="introsection">
        <img class="usa-flag" src="templates/img_PresidentPage/usaBandiera.png" alt="USA Flag">
        <h1>THE PARTIES</h1>
    </div>

    <!-- Democratic Party section -->
    <div class="party" id="democraticparty">
        <!-- Testo a sinistra -->
        <div style="width: 60%;">
            <h2>Democratic Party</h2>
            <h3>Overview</h3>
            <p>The Democratic Party is one of the two major political parties in the United States, and it was founded in 1828.</p>
            <h3>Ideology</h3>
            <p>The Democratic Party generally advocates for progressive policies that include:</p>
            <ol>
                <li><strong>Social justice</strong></li>
                <li><strong>Gun control</strong></li>
                <li><strong>Environmental justice</strong></li>
                <li><strong>Healthcare for all</strong></li>
                <li><strong>Reduce economic inequality</strong></li>
                <li><strong>Provide more social services</strong></li>
                <li><strong>Women’s reproductive rights</strong></li>
            </ol>
            <h3>Major Figures</h3>
            <ul>
                <li>Prominent leaders affiliated with the Democratic Party include Franklin D. Roosevelt, John F. Kennedy, Bill Clinton, Jimmy Carter and Barack Obama.</li>
                <li>Current key figures include Joe Biden, Kamala Harris, and prominent senators and congresspersons.</li>
            </ul>

        </div>

        <!-- Slideshow a destra -->
        <div class="slideshow-container">
            <!-- Slide 1 -->
            <div class="mySlides1">
                <img src="templates/img_Parties/democratic/1.jpg" class="slide-img">
                <figcaption class="slide-text">Franklin D. Roosevelt</figcaption>
            </div>

            <!-- Slide 2 -->
            <div class="mySlides1">
                <img src="templates/img_Parties/democratic/2.jpeg" class="slide-img">
                <figcaption class="slide-text">John F Kennedy</figcaption>
            </div>

            <!-- Slide 3 -->
            <div class="mySlides1">
                <img src="templates/img_Parties/democratic/3.jpeg" class="slide-img">
                <figcaption class="slide-text">Jimmy Carter</figcaption>
            </div>

            <!-- Slide 4 -->
            <div class="mySlides1">
                <img src="templates/img_Parties/democratic/4.jpg" class="slide-img">
                <figcaption class="slide-text">Bill Clinton</figcaption>
            </div>


            <!-- Slide 5 -->
            <div class="mySlides1">
                <img src="templates/img_Parties/democratic/5.jpg" class="slide-img">
                <figcaption class="slide-text">Barack Obama</figcaption>
            </div>


            <!-- Add more slides as needed -->

            <!-- Aggiunta di un'immagine nella parte inferiore destra -->
            <img src="templates/img_Parties/democratic/simbolo.png" class="watermark" alt="Watermark">
        </div>

    </div>


    <div class="party" id="republican">
        <!-- Testo a sinistra -->
        <div style="width: 60%;">
        <h2>Republican Party</h2>
        <h3>Overview</h3>
        <p>The Republican Party is the other major political party in the United States. It was founded 1854, and it is also called the GOP, the Grand Old Party.</p>

        <h3>Ideology</h3>
        <p>The Republican Party generally supports conservative policies...</p>
            <ol>
                <li><strong>increased military spending</strong></li>
                <li><strong>anti-immigration</strong></li>
                <li><strong>individualism</strong></li>
                <li><strong>less gov’t intervention</strong></li>
                <li><strong>traditional “family” values</strong></li>
                <li><strong>State’s rights</strong></li>
            </ol>

        <h3>Major Figures</h3>
        <ul>
            <li>Prominent leaders affiliated with the Republican Party include Abraham Lincoln, Richard Nixon, Ronald Reagan, and George W. Bush.</li>
            <li>Current key figures include Donald Trump, Mitch McConnell, and prominent senators and congresspersons.</li>
        </ul>

        </div>

        <!-- Slideshow a destra -->
        <div class="slideshow-container">
            <!-- Slide 1 -->
            <div class="mySlides2">
                <img src="templates/img_Parties/republican/1.jpeg" class="slide-img">
                <figcaption class="slide-text">Richard Nixon</figcaption>
            </div>

            <!-- Slide 2 -->
            <div class="mySlides2">
                <img src="templates/img_Parties/republican/2.jpg" class="slide-img">
                <figcaption class="slide-text">Ronald Reagan</figcaption>
            </div>

            <!-- Slide 3 -->
            <div class="mySlides2">
                <img src="templates/img_Parties/republican/3.jpeg" class="slide-img">
                <figcaption class="slide-text">George W. Bush</figcaption>
            </div>

            <!-- Slide 4 -->
            <div class="mySlides2">
                <img src="templates/img_Parties/republican/4.jpg" class="slide-img">
                <figcaption class="slide-text">Donald Trump</figcaption>
            </div>


            <!-- Add more slides as needed -->

            <!-- Aggiunta di un'immagine nella parte inferiore destra -->
            <img src="templates/img_Parties/republican/simbolo.png" class="watermark" alt="Watermark">
        </div>

    </div>

    <div class="party" id="thirdparty">
        <!-- Testo a sinistra -->
        <div style="width: 60%;">
            <h2>Third Parties</h2>
            <h3>Overview</h3>
            <p>Third parties in the United States refer to political parties other than the dominant Democratic and Republican parties. These parties offer alternative ideologies and policies to voters.</p>

            <h3>Examples</h3>
            <ul>
                <li>Notable third parties include the Libertarian Party, Green Party, Constitution Party, and various independent candidates.</li>
                <li>Each of these parties represents distinct ideologies, such as libertarianism, environmentalism, or constitutional conservatism.</li>
            </ul>

            <h3>Challenges</h3>
            <ul>
                <li>Third parties face significant obstacles in gaining ballot access, media coverage, and financial support. The two-party system dominates American politics, making it difficult for third parties to compete.</li>
                <li>Additionally, the winner-takes-all electoral system in the U.S. often marginalizes third-party candidates, further limiting their influence.</li>
            </ul>

            <h3>Impact</h3>
            <p>Despite these challenges, third parties have influenced American politics by shaping debates, promoting new ideas, and occasionally winning local or state-level offices. They often bring attention to issues overlooked by the major parties and offer voters alternative choices.</p>
        </div>

        <div>
            <ul class="logo-list">
                <li><a href="https://www.lp.org/"><img src="templates/img_Parties/thirdParties/1.png" alt="Libertarian Party Logo"></a></li>
                <li><a href="https://www.gp.org/"><img src="templates/img_Parties/thirdParties/2.png" alt="Green Party Logo"></a></li>
                <li><a href="https://www.constitutionparty.com/"><img src="templates/img_Parties/thirdParties/3.png" alt="Constitution Party Logo"></a></li>
            </ul>
        </div>
    </div>


    <div class="button-container">
        <div class="button hover" >
            <a href='index.php'><button>Home</button></a>
        </div>
    </div>
</div>

<script>
    var slide1Index = 0;
    showSlides1();

    function showSlides1() {
        var i;
        var slides = document.getElementsByClassName("mySlides1");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slide1Index++;
        if (slide1Index > slides.length) {slide1Index = 1}
            slides[slide1Index-1].style.display = "block";
        setTimeout(showSlides1, 6000); // Cambia slide ogni 6 secondi (6000 millisecondi)
    }

    var slide2Index = 0;
    showSlides2();

    function showSlides2() {
        var i;
        var slides = document.getElementsByClassName("mySlides2");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slide2Index++;
        if (slide2Index > slides.length) {slide2Index = 1}
            slides[slide2Index-1].style.display = "block";
        setTimeout(showSlides2, 6000); // Cambia slide ogni 6 secondi (6000 millisecondi)
    }


</script>
</body>
</html>
