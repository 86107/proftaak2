<?php
    ob_start();
    require_once ('php/config.php');
    ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="icon" href="img/Flix-Media Logo DarkMode.ico">

    <title>FLIX-Media</title>
</head>
<header id="header">
<!-- nav bar for the pages -->
    <nav id="main-nav">
    <a href="home.php"> <img src="img/Flix-Media Logo LightMode.png" class="logo" id="logo"></a>
        <div class="searchBox">
            <input type="search" placeholder="Zoeken...">
            <i class="fa fa-search"></i>
        </div>
        <img src="img/moon.png" id="icon">
    </nav>
</header>
<body>
<?php
    if(isset($_POST['btn-add-post']))
    {
        $Post_Text = $_POST['post_text'];

        if ($Post_Text != "")
        {
            $sql = "INSERT INTO posts (post_text,post_date) VALUES('$Post_Text', now())";
            $result = mysqli_query($conn,$sql);

        }

    }
    ?>
<div class='social-links'>
<a href="home.php" style="text-decoration: none;"><div class='social-btn flex-center' id="button">
        <i class="fa-solid fa-house"></i><span>	&nbsp;Home</span>
	</div></a>
    <br>
	<a href="movie.php" style="text-decoration: none;"><div class='social-btn flex-center' id="button">
    <i class="fa-solid fa-clapperboard"></i><span>	&nbsp;Films</span>
	</div></a>
    <br>
	<a href="gaming.php" style="text-decoration: none;"><div class='social-btn flex-center' id="button">
        <i class="fa-solid fa-gamepad"></i><span>	&nbsp;Gaming</span>
	</div></a>
    <br>
	<a href="muziek.php" style="text-decoration: none;"><div class='social-btn flex-center' id="button">
        <i class="fa-solid fa-music"></i><span>	&nbsp;Muziek</span>
	</div></a>
</div>
    <div class="action">
        <div class="profile" onclick="menuToggle();">
            <div class="container">
                <?php 
                    $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$_SESSION['unique_id']}");
                    if(mysqli_num_rows($sql) > 0){
                    $row = mysqli_fetch_assoc($sql);
                    }
                ?>
                <img class="container" src="php/images/<?php echo $row['img']; ?>" alt="">
                </div>
        </div>
        <div class="menu">
            <h3><?php echo $row['uname'] ?><br><span><p><?php echo $row['status']; ?></p></span></h3>
            <ul>
                <li><img src="img/user.png"><a href="Account-update.php">Mijn profiel</a></li>
                <li><img src="img/envelope.png"><a href="users.php">Chat</a></li>
                <li><img src="img/question.png"><a href="about.php">Over ons</a></li>
                <li><img src="img/log-out.png"><a href="php/logout.php?logout_id=<?php echo $row['unique_id']; ?>">Uitloggen</a></li>
            </ul>
        </div>
    </div>
    <script>
        function menuToggle(){
            const toggleMenu = document.querySelector('.menu');
            toggleMenu.classList.toggle('active')
        }
    </script>
    <script>
        var icon = document.getElementById("icon");
        var logo = document.getElementById("logo");

        icon.onclick = function(){
            document.body.classList.toggle("dark-theme");
            if(document.body.classList.contains("dark-theme")){
                icon.src = "img/sun.png";
                logo.src = "img/Flix-Media Logo DarkMode.png";
            }else{
                icon.src = "img/moon.png";
                logo.src = "img/Flix-Media Logo LightMode.png";
            }
        }

        
    </script>
    <script>
        function toggleChat() {
            var blur=document.getElementById('blur');
            blur.classList.toggle('active');
            var popup = document.getElementById('popup');
            popup.classList.toggle('active');
        }
    </script>
</body>
</html>