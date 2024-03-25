<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Database</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .header {
            background-color: floralwhite;
            color: black;
            padding: 20px;
            text-align: center;
        }

        .container {
            flex: 1;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .filter-container {
            margin-bottom: 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .filter-container input {
            width: 200px;
            padding: 8px;
            margin-right: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .button-container {
            display: flex;
            justify-content: center;
            margin-top: 10px;
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

        table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #fff;
        }

        th, td {
            border: 1px solid #ddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .reset-button {
            background-color: #ff0000;
            color: #fff;
            border: none;
            padding: 8px 16px;
            cursor: pointer;
            border-radius: 4px;
            margin-top: 10px;
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

<div class="header">
    <h1>Presidential Elections Database</h1>
    <img class="usa-flag" src="templates/img_PresidentPage/usaBandiera.png" alt="USA Flag">
</div>

<div class="container">
    <div class="filter-container">
        <input type="number" id="Anno" placeholder="Year only divisible by 4" value='' min='1976' max='2020' step='4'>
        <input type="text" id="Candidato" placeholder="Candidates" value=''>
        <input type="text" id="Stato" placeholder="State" value=''>
        <button class="reset-button" onclick="resetFilters()">Reset</button>
    </div>

    <div class="button-container">
        <div class="button hover">
            <a href='index.php'><button>Home</button></a>
        </div>
    </div>
    <table id="myTable">
        <thead>
        <tr>
            <th>Year</th>
            <th>Candidate</th>
            <th>State</th>
            <th>Votes</th>
        </tr>
        </thead>
        <tbody id="tableBody">
        </tbody>
    </table>
</div>

<script>
    const filter1Input = document.getElementById('Candidato');
    const filter2Input = document.getElementById('Stato');
    const filter3Input = document.getElementById('Anno');

    document.addEventListener("DOMContentLoaded", function() {
        filter1Input.addEventListener('keyup', function() {
            filterTable();
        });

        filter2Input.addEventListener('keyup', function() {
            filterTable();
        });

        filter3Input.addEventListener('input', function() {
            filterTable();
        });
    });

    function filterTable() {
        const filter1Value = filter1Input.value.toUpperCase();
        const filter2Value = filter2Input.value.toUpperCase();
        const filter3Value = filter3Input.value;

        if (filter3Value % 4 != 0 && filter3Value != '') {
            alert("Error, wrong input year")
            filter3Input.value = '';
        } else {
            const tableBody = document.getElementById('tableBody');

            fetch('Database.php? Candidato=' + filter1Value + '&Stato=' + filter2Value + '&Anno=' + filter3Value)
                .then(response => response.text())
                .then(data => {
                    tableBody.innerHTML = data;
                })
                .catch(error => {
                    console.error('Errore durante il recupero dei dati:', error);
                });
        }
    }

    function resetFilters() {
        document.getElementById('Stato').value = '';
        document.getElementById('Candidato').value = '';
        document.getElementById('Anno').value = '';
        filterTable();
    }
</script>

</body>
</html>
