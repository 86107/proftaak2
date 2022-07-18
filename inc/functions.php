<?php
    function getNieuws($nieuwsId)
    {
        //includes database file
        include('database.php');
        $nieuws = array();
        //tell where to find data in database but with the project id, for a single page
        $getNieuwsSQL = "SELECT * FROM nieuws WHERE nieuwsId = " . $nieuwsId;
        $result = $conn->query($getNieuwsSQL) or die($conn->error);
        $nieuws = $result->fetch_assoc();

        $conn->close();

        return $nieuws;
    }

    function getMorenieuws()
    {
        //includes database file 
        include('database.php');
        $categories = array();
        //tell where to find data in database for all projects
        $getCategorieSQL = "SELECT * FROM nieuws";
        $result = $conn->query($getCategorieSQL) or die($conn->error);
        $categories = $result->fetch_all(MYSQLI_ASSOC);

        $conn->close();

        return $categories;
    }
    function getMovies()
    {
        //includes database file 
        include('database.php');
        $movies = array();
        //tell where to find data in database for all projects
        $getMoviesSQL = "SELECT * FROM nieuws WHERE (`nieuws`.`NieuwsCatogory` = 'films')";;
        $result = $conn->query($getMoviesSQL) or die($conn->error);
        $movies = $result->fetch_all(MYSQLI_ASSOC);

        $conn->close();

        return $movies;
    }
    function getGames()
    {
        //includes database file 
        include('database.php');
        $games = array();
        //tell where to find data in database for all projects
        $getGamesSQL = "SELECT * FROM nieuws WHERE (`nieuws`.`NieuwsCatogory` = 'games')";;
        $result = $conn->query($getGamesSQL) or die($conn->error);
        $games = $result->fetch_all(MYSQLI_ASSOC);

        $conn->close();

        return $games;
    }
    function getMuziek()
    {
        //includes database file 
        include('database.php');
        $meermuziek = array();
        //tell where to find data in database for all projects
        $getMeermuziekSQL = "SELECT * FROM nieuws WHERE (`nieuws`.`NieuwsCatogory` = 'muziek')";;
        $result = $conn->query($getMeermuziekSQL) or die($conn->error);
        $meermuziek = $result->fetch_all(MYSQLI_ASSOC);

        $conn->close();

        return $meermuziek;
    }

    function displayNieuws($nieuwsId)
    {
        $nieuws = getNieuws($nieuwsId);

        //var_dump($nieuws);
        //IF there is a id in my database that matches the one in the search bar, a project will me shown
        if($nieuws !== null)
        {
            ?>
                <div class="oneproject">
                    <img src="img/<?=$nieuws['nieuwsImage']?>" class="projectImage" />
                    <h1 class="projectnames"><?=$nieuws['nieuwsTitle']?></h1>
                    <h4 class="projecttext"><?=$nieuws['nieuwsDiscription']?></h4>
                
                   <h3><a href="home.php" class="backtoprojects"><i class="fa-solid fa-house"></i></a></h3>
                </div>
            <?php
        }
        //ELSE a error message will be shown
        else
        {
            echo "No news with this id" . $nieuwsId;
        }
    }

    function displayMorenieuws()
    {
        $categories = getMorenieuws();
        //with foreach all projects will be displayed
        foreach($categories as $category)
        {
            ?>
                <div class="project" id="project">
                    <img src="img/<?=$category['nieuwsImage']?>" class="projectImage" />
                    <div class="projectnames">
                        <h3><a href="home.php?nieuwsId=<?=$category['nieuwsId']?>"><?=$category['nieuwsTitle']?></a></h3>
                    </div>
                </div>
            <?php
        }
    }
    function displayMovies()
    {
        $movies = getMovies();
        //with foreach all projects will be displayed
        foreach($movies as $movie)
        {
            ?>
                <div class="project" id="project">
                    <img src="img/<?=$movie['nieuwsImage']?>" class="projectImage" />
                    <div class="projectnames">
                        <h3><a href="home.php?nieuwsId=<?=$movie['nieuwsId']?>"><?=$movie['nieuwsTitle']?></a></h3>
                    </div>
                </div>
            <?php
        }
    }
    function displayGames()
    {
        $games = getGames();
        //with foreach all projects will be displayed
        foreach($games as $game)
        {
            ?>
                <div class="project" id="project">
                    <img src="img/<?=$game['nieuwsImage']?>" class="projectImage" />
                    <div class="projectnames">
                        <h3><a href="home.php?nieuwsId=<?=$game['nieuwsId']?>"><?=$game['nieuwsTitle']?></a></h3>
                    </div>
                </div>
            <?php
        }
    }
    function displayMuziek()
    {
        $meermuziek = getMuziek();
        //with foreach all projects will be displayed
        foreach($meermuziek as $muziek)
        {
            ?>
                <div class="project" id="project">
                    <img src="img/<?=$muziek['nieuwsImage']?>" class="projectImage" />
                    <div class="projectnames">
                        <h3><a href="home.php?nieuwsId=<?=$muziek['nieuwsId']?>"><?=$muziek['nieuwsTitle']?></a></h3>
                    </div>
                </div>
            <?php
        }
    }
?>