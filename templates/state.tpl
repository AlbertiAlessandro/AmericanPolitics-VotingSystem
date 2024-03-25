<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=$name?> State Information</title>

    <style>
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
            justify-content: center; /* Centra i bottoni */
            margin-top: 20px; /* Aggiunge spazio sopra */
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            position: relative;
            min-height: 100vh;
            padding: 20px;
        }

        .card {
            background-color: floralwhite;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 600px;
            margin: 0 auto;
            text-align: center;
        }

        h1 {
            color: #333;
            font-size: 36px;
            margin-bottom: 10px;
        }

        h2 {
            color: #555;
            font-size: 24px;
            margin-bottom: 10px;
        }

        img {
            width: 200px;
            border-radius: 10px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="card">
    <h1><?=$name?></h1>
    <img src="http://flags.ox3.in/svg/us/<?=$id?>.svg" alt="Flag of <?=$name?>">
    <h2>Capital: <?=$state_information['capital']?></h2>
    <h2>Largest City: <?=$state_information['largest_city']?></h2>
    <h2>Area: <?=$state_information['area_sq_miles']?> square miles</h2>
    <h2>Population: <?=$state_information['population']?></h2>

    <div class="button-container">
        <div class="button hover" >
            <a href='UnitedStatesOfAmerica.php'><button>Return to the Map</button></a>
        </div>
    </div>
</div>
</body>
</html>
