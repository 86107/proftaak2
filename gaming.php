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
include('inc/navbar.php')
?>
<div class="projectsmain">
<!-- IF there is a project id, it only shows a certain project ELSE all projects get displayedgeghegh -->
    <?php
        if(isset($_GET['projectId']) && is_numeric($_GET['projectId']))
        {
        // display only one single project
            displaynieuws($_GET['nieuwsId']);
        }
        else  
        {
        //displays multiple projects
        displayGames();
        }
    ?>
      <!-- <form method="get" action="http://twitter.com/intent/tweet" target="_blank" id="tweet" class="panel">
        <div class="row">
          <div class="large-9 columns">
            <textarea name="text">I just got #XAMPP from @ApacheFriends https://www.apachefriends.org #opensource.</textarea>
          </div>
          <div class="large-3 columns">
            <input type="submit" value="Tweet!" class="button" />
          </div>
        </div>
      </form> -->
</body>
</html>