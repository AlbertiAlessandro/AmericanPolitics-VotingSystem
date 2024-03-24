<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Current US President</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Current President</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            color: #333;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 20px;
        }

        .president-info {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-top: 20px;
            max-width: 800px;
        }

        h1 {
            color: #b71c1c;
            text-align: center;
            margin-bottom: 20px;
        }

        p {
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .button button {
            padding: 15px 30px;
            border: 2px solid #b71c1c;
            border-radius: 10px;
            cursor: pointer;
            background-color: #b71c1c;
            color: #fff;
            font-size: 1em;
            font-weight: bold;
            transition: all 0.3s ease-in-out;
            margin: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        }

        .button button:hover {
            background-color: #fff;
            color: #b71c1c;
        }

        .usa-flag {
            position: absolute;
            top: 20px;
            right: 20px;
            width: 50px;
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
        <p>He is a member of the Democratic Party. Biden served as the Vice President of the United States from 2009 to 2017 under President Barack Obama, playing a key role in shaping domestic and foreign policy initiatives.</p>
        <p>Prior to his vice presidency, Biden represented Delaware in the U.S. Senate from 1973 to 2009. Throughout his tenure in the Senate, he earned a reputation for his work on issues such as criminal justice, foreign relations, and healthcare.</p>
        <p>In the 2020 presidential election, Joe Biden ran as the Democratic nominee against incumbent President Donald Trump. Biden's campaign focused on themes of unity, empathy, and restoring the soul of America.</p>
        <p>Biden won the election by securing 306 electoral votes compared to Trump's 232. He also received over 81 million votes, the highest number ever cast for a presidential candidate in U.S. history.</p>
        <p>Biden's victory was achieved through successful campaigns in key swing states, particularly in the Midwest and Rust Belt regions, such as Pennsylvania, Michigan, and Wisconsin.</p>
        <p>As President, Joe Biden has prioritized addressing pressing issues such as the COVID-19 pandemic, economic recovery, climate change, racial justice, and healthcare reform.</p>

        <p>Learn more about President Biden's policies and initiatives on the official <a href="https://www.whitehouse.gov/" target="_blank">White House website</a>.</p>
        <div class="button-container">
            <div class="button hover" >
                <a href='index.php'><button>Home</button></a>
            </div>
        </div>
    </div>
</div>
