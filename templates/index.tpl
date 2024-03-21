<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>America</title>
    <style>
        /* Imposta il font e la dimensione dell'h1 */
        h1 {
            font-family: Impact, sans-serif;
            font-size: 6em;
            font-weight: bold;
            margin: 0; /* Rimuovi il margine predefinito */
            color: white;
        }



        .total {
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            animation: change 50s linear infinite;
        }

        @keyframes change {
            0% {
                background-image: url("templates/img/img1.jpg");

            }

            10% {
                background-image: url("templates/img/img2.jpg");
            }

            20% {
                background-image: url("templates/img/img3.jpg");
            }

            30% {
                background-image: url("templates/img/img4.jpg");
            }

            40% {
                background-image: url("templates/img/img5.jpg");

            }

            50% {
                background-image: url("templates/img/img6.jpg");
            }

            60% {
                background-image: url("templates/img/img7.jpg");
            }

            70% {
                background-image: url("templates/img/img8.jpg");
            }

            80% {
                background-image: url("templates/img/img9.jpg");
            }

            90% {
                background-image: url("templates/img/img10.jpg");
            }

            100% {
                background-image: url("templates/img/img11.jpg");
            }
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

    </style>
</head>
<body>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>America</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="total">
    <h1>American Politics & Voting System</h1>
    <div class="button-container">
        <div class="button hover" >
            <a href='UnitedStatesOfAmerica.php'><button>United States of America</button></a>
        </div>
        <div class="button hover">
            <a href='ActualPresident.php'><button>Actual President</button></a>
        </div>
        <div class="button hover">
            <a href='Elections.php'><button>Elections</button></a>
        </div>
        <div class="button hover">
            <a href='Parties.php'><button>The Parties</button></a>
        </div>
        <div class="button hover">
            <a href='Database.php'><button>Database</button></a>
        </div>

    </div>
</div>

</body>







