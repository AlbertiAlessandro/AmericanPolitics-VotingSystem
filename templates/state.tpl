<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=$name?></title>

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
    flex-wrap: wrap;
    justify-content: space-around;
    width: 80%; /* Larghezza massima del contenitore dei bottoni */
    margin: 0 auto; /* Centra il contenitore dei bottoni */
    }        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            position: relative;
            min-height: 100vh;
            padding: 20px;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-top: 0;
            height: 100px;
            line-height: 100px;
            font-size: 50px;
        }

        img {
            position: absolute;
            top: 20px;
            right: 20px;
            width: 100px;
            height: auto;
        }

        div {
            text-align: center;
            margin-top: 50px;
        }

        h2 {
            font-size: 24px;
            color: #555;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <h1><?=$name?></h1>
    <img src="http://flags.ox3.in/svg/us/<?=$id?>.svg" alt="Bandiera <?=$name?>">

    <div>
        <h2>Capital : <?=$state_information['capital']?></h2>
        <h2>Largest City : <?=$state_information['largest_city']?></h2>
        <h2>Area : <?=$state_information['area_sq_miles']?> miles^2</h2>
        <h2>Population : <?=$state_information['population']?></h2>
    </div>
     <div class="button-container">
        <div class="button hover" >
            <a href='UnitedStatesOfAmerica.php'><button>Return at the Map</button></a>
        </div>
    </div>
</div>
</body>
</html>
