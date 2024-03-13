<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Current US President</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            min-height: 100vh;
        }

        .container {
            flex: 1;
            display: flex;
        }

        .president-image {
            max-width: 100%;
            height: auto;
            border: 4px solid #000; /* Border color: black */
            border-radius: 8px;
        }

        .president-info {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            box-sizing: border-box;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        h1, h2 {
            color: #b71c1c; /* Red */
            text-align: center;
        }

        p {
            color: #333;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .highlight {
            font-weight: bold;
            color: #b71c1c; /* Red */
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
<img class="usa-flag" src="templates/img_PresidentPage/usaBandiera.png" alt="USA Flag">
<div class="container">
    <img class="president-image" src="templates/img_PresidentPage/joeBiden.webp" alt="Joe Biden">
    <div class="president-info">
        <h1>Current US President</h1>
        <h2>Joe Biden</h2>
        <p><span class="highlight">Joe Biden</span> is the 46th President of the United States, serving since January 20, 2021. He was born on November 20, 1942, in Scranton, Pennsylvania. President Biden has a long political career, including serving as the Vice President under Barack Obama from 2009 to 2017.</p>
        <p>Learn more about President Biden's policies and initiatives on the official <a href="https://www.whitehouse.gov/" target="_blank">White House website</a>.</p>
        <div class="button-container">
            <div class="button hover" >
                <a href='index.php'><button>Home</button></a>
        </div>
    </div>
</div>
</div>

</body>

</html>
