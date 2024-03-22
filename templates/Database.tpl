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
    </style>
</head>
<body>

<div class="container">
    <h1>Amrican ELections Database</h1>
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
</div>
</body>
</html>
