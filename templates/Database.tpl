<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>American Elections Database</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 20px auto;
        }
        .filters {
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table th, table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        table th {
            background-color: #f2f2f2;
        }

        .usa-flag {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 50px; /* Adjust the size as needed */
            height: auto;
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

        /* Stili per il div della query */
        .query {
            background-color: #f9f9f9; /* Colore di sfondo diverso */
            padding: 20px;
            margin-top: 20px; /* Aggiunge spazio sopra il div */
        }

        .query textarea {
            width: 100%;
            height: 100px; /* Altezza della textarea */
            resize: vertical; /* Permette il ridimensionamento verticale */
            padding: 10px;
            font-size: 14px;
            margin-bottom: 10px; /* Aggiunge spazio sotto la textarea */
        }
    </style>
</head>
<body>

<div class="container">
    <h1>American Elections Database</h1>
    <img class="usa-flag" src="templates/img_PresidentPage/usaBandiera.png" alt="USA Flag">
    <!-- Div per la query SQL -->
    <div class="query">
        <h2>Inserisci la tua query SQL:</h2>
        <textarea id="sql-query" placeholder="Inserisci qui la tua query SQL"></textarea>
        <div class="filters">
            <label for="category">Categoria:</label>
            <select name="category" id="category">
                <option value="">Tutte</option>
                <option value="1">Categoria 1</option>
                <option value="2">Categoria 2</option>
                <option value="3">Categoria 3</option>
            </select>

            <label for="status">Stato:</label>
            <select name="status" id="status">
                <option value="">Tutti</option>
                <option value="pending">In sospeso</option>
                <option value="completed">Completati</option>
                <option value="cancelled">Annullati</option>
            </select>
        </div>
        <div class="button-container">
            <button type="submit">Esegui Query</button>
        </div>
    </div>


    <table id="data-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Categoria</th>
            <th>Stato</th>
        </tr>
        </thead>
        <tbody>
        <!-- Questo è solo un esempio di tabella vuota -->
        <tr>
            <td colspan="4">Nessun dato disponibile</td>
        </tr>
        </tbody>
    </table>



    <div class="button-container">
        <div class="button hover" >
            <a href='index.php'><button>Home</button></a>
        </div>
    </div>
</div>

</body>
</html>
