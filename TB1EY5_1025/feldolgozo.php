<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feldolgozó</title>
</head>
<body>
    <font style=" font-size:18pt">
    <h2>HTML5 űrlap_TB1EY5</h2>

    <?php
        echo ("<strong>Név: </strong>" . $_POST['nev'] . "<br><br>");

        echo ("<strong>PIN kód: </strong>" . $_POST['kod'] . "<br><br>");

        echo ("<strong>Gyümölcs: </strong>" . $_POST['gyumolcs'] . "<br><br>");

        echo ("<strong>eletkor: </strong>" . $_POST['eletkor'] . "<br><br>");

        echo ("<strong>Lábméret: </strong>" . $_POST['labmeret'] . "<br><br>");

        echo ("<strong>Önbizalom: </strong>" . $_POST['onbizalom'] . "<br><br>");
    ?>

    <a href="Űrlap.html">Vissza az űrlapra.</a>
    </font>
</body>
</html>