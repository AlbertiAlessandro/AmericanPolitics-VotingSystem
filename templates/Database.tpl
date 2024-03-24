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
            margin-bottom: 20px; /* Aggiunge spazio sotto il div */
        }

        .keyword {
            font-weight: bold;
            margin-right: 5px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>American Elections Database</h1>
    <img class="usa-flag" src="templates/img_PresidentPage/usaBandiera.png" alt="USA Flag">
    <!-- Div per la query SQL -->
    <div class="query">
        <h2>Select the fields for your SQL query</h2>
        <h4>Winner of elections in a specific year</h4>
        <div class="query-content">
            <span class="keyword">YEAR</span>
            <select name="selectOptions" id="selectOptions">
                <?php for ($i = 1976; $i <= 2020; $i += 4): ?>
                <option value="<?= $year ?>"><?=$i?></option>
                <?php endfor; ?>
            </select>



        </div>
        <div class="button-container">
            <button onclick="componiQuery()">Componi Query</button>
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

<script>
    function componiQuery() {
        var selectOption = document.getElementById("selectOptions").value;
        var fromOption = document.getElementById("fromOptions").value;
        var categoria = document.getElementById("category").value;
        var stato = document.getElementById("status").value;

        var query = "SELECT " + selectOption + " FROM " + fromOption;

        if (categoria !== "") {
            query += " WHERE categoria = '" + categoria + "'";
        }

        if (stato !== "") {
            if (categoria === "") {
                query += " WHERE stato = '" + stato + "'";
            } else {
                query += " AND stato = '" + stato + "'";
            }
        }

        console.log("Query:", query);
    // Esegui qui la logica per eseguire la query
    }
</script>

</body>
</html>
