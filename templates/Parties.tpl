<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>Home</title>

    <link rel="stylesheet" href="style.css">

    <!-- JQuery, agisce sulle animazioni-->

    <script src="https://code.jquery.com/jquery-3.7.1.min.js" ></script>

    <!--codice jQuery-->

    <script>

        <!--codice per scrollare le pagine, tramite il menu inziale -->

        jQuery(document).ready(function (){

            function scrollWin(anc) {

                target = jQuery(anc);

                jQuery('html, body').animate({

                    scrollTop: target.offset().top}, 1000);

            }

            jQuery(".menu1").click(function (){

                scrollWin("#section1");

            });

            jQuery(".menu2").click(function (){

                scrollWin("#section2");

            });

            jQuery(".menu3").click(function (){

                scrollWin("#section3");

            });

            jQuery(".menu4").click(function (){

                scrollWin("#section4");

            });




        })

    </script>

    <style>
        .sections{
            width: 100%;
            height: 600px;
            text-align: center;
        }

        .flex{
            display: flex;
            align-items: center;
            justify-content: center;
        }

        h1{
            font-family: 'Bebas Neue', cursive;
            font-size: 40px;
            margin: 0;
        }

        body{
            padding: 0;
            margin: 0;
        }

        #section1{
            background-image: url("templates/img/img2.jpg");
        }


        #section2{
            background-color: lightgray;
        }

        #section3{
            background-color: white;
        }

        #section4{
            background-color: lightgray;
        }

        /* Menu */
        #menu{
            width: 100%;
            height: 50px;
            background: red;
            position: fixed;
        }

        #menu ul{
            margin: 0;
        }

        #menu li{
            display: inline;
            margin: 0 50px;
            font-family: 'Bebas Neue', cursive;
            font-size: 18px;
        }

        #menu li:hover{
            cursor: pointer;
            text-decoration: underline;
        }
    </style>




</head>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">




<body>

<!--menu-->

<div id="menu" class="flex">

    <div id="menu_indoor">

        <ul>

            <li class="menu1">The Parties</li>

            <li class="menu2">Democratic Party</li>

            <li class="menu3">Republic Party</li>

            <li class="menu4">Third Party</li>

        </ul>

    </div>

</div>



<!--sezioni-->

<div id="section1" class="sections flex">

    <div class="indoor">



        <h1>The Parties</h1>

    </div>

</div>




<div id="section2" class="sections flex">




</div>




<div id="section3" class="sections flex">




</div>




<div id="section4" class="sections flex">




</div>










</body>

</html>