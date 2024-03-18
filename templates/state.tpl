<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=$name?></title>
    <style>
        body {
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
        <h2>Capital </h2>
        <h2>Population</h2>
        <h2>Density</h2>
    </div>
</body>
</html>
