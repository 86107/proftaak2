<?php
    include('inc/functions.php');
    session_start();
    include_once "php/config.php";
    if(!isset($_SESSION['unique_id']))
      header("location: login.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

    <title>FLIX-Media</title>
</head>
<?php
include('inc/navbarnochat.php')
?>
  <img src="img/flixmediaposter.jpg" class="aboutposter">
  <div class="aboutContainer">
            <h1 class="abouthead">Wie zijn wij?</h1><br><br>
            <h1 class="spacing">Wij zijn FlixMedia, een groep jonge studenten die een project hebben gemaakt voor school.
                Wij worden/zijn hiervoor beoordeeld.
                Dit is het resultaat van 8 weken werk, waaronder we ~2 weken voorberijding hadden gedaan.
                Op onze website vind je al het nieuws over media; onder anderen films games en muziek.<br><br>

                Onze groep bestaat uit Thijs Klerkx, Dylan van der Horst, Kevin Rommens & Jesper Gommans. Wij hebben doormiddel van HTML, CSS, PHP & Javascript deze website in elkaar gezet. Wij danken meneer Porobic en Nöcker met het helpen van het bouwen van deze website en het geven van tips als deze nodig waren.
                <img src="img/Flix-Media Logo LightMode.png" class="logoabout">
</h1>
        </div>
</body>
</html>