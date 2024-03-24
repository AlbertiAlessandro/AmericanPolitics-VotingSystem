<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Database</title>
<style>
 .reset-button {
        position: absolute;
        top: 0;
        right: 0;
        background-color: #ff0000;
        color: #fff;
        border: none;
        padding: 8px 16px;
        cursor: pointer;
        border-radius: 4px;
    }
    body {
        font-family: Arial, sans-serif;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    .filter-container {
        margin-bottom: 20px;
    }
    .filter-container input {
        width: 200px;
        padding: 8px;
        margin-right: 10px;
    }
</style>
</head>
<body>

<div class="filter-container">
    <input type="number" id="Anno" placeholder="Year only divisible by 4" value='' min='1976' max='2020' step='4' >
    <input type="text" id="Candidato" placeholder="Candidates" value=''>
    <input type="text" id="Stato" placeholder="State" value=''>
    <button class="reset-button" onclick="resetFilters()">Reset</button>

</div>

<table id="myTable">
    <thead>
        <tr>
            <th>Year</th>
            <th>Candidate</th>
            <th>State</th>

        </tr>
    </thead>
    <tbody id="tableBody">
        <!-- Qui verranno inserite le righe dalla risposta PHP -->
    </tbody>
</table>

<script>
        const filter1Input = document.getElementById('Candidato');
        const filter2Input = document.getElementById('Stato');
        const filter3Input = document.getElementById('Anno');
    document.addEventListener("DOMContentLoaded", function() {
        const filter1Input = document.getElementById('Candidato');
        const filter2Input = document.getElementById('Stato');
        const filter3Input = document.getElementById('Anno');
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
            console.log(filter3Value)
            console.log(filter1Value)
            console.log(filter2Value)
            if(filter3Value%4!=0 && filter3Value!=''){
            alert("Error, wrong input year")
            filter3Input.value=''
            }
            else{
            const tableBody = document.getElementById('tableBody');

            fetch('Database.php? Candidato=' + filter1Value + '&Stato=' + filter2Value + '&Anno='+ filter3Value)
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
