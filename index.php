<?php 
  session_start();
  if(isset($_SESSION['unique_id'])){
    header("location: users.php");
  }
?>

<?php include_once "header.php"; ?>
<body>
<img class="logoinlog" src="img/Flix-Media Logo DarkMode.png" alt="">
  <div class="wrapper">
    <section class="form signup">
      <header>Registreren</header>
      <form action="#" method="POST" enctype="multipart/form-data" autocomplete="off">
        <div class="error-text"></div>
          <div class="field input">
            <label>Gebruikersnaam</label>
            <input type="text" name="uname" placeholder="Gebruikersnaam" required>
          </div>
        <div class="field input">
          <label>Email</label>
          <input type="text" name="email" placeholder="Vul hier uw email in" required>
        </div>
        <div class="field input">
          <label>Wachtwoord</label>
          <input type="password" name="password" placeholder="Vul hier uw wachtwoord in" required>
          <i class="fas fa-eye"></i>
        </div>
        <div class="field image">
          <label>Selecteer een profielfoto</label>
          <input type="file" name="image" accept="image/x-png,image/gif,image/jpeg,image/jpg" required>
        </div>
        <div class="field button">
          <input type="submit" name="submit" value="Registreer">
        </div>
      </form>
      <div class="link">Heeft u al een account? <a href="login.php">Log hier in!</a></div>
    </section>
  </div>

  <script src="javascript/pass-show-hide.js"></script>
  <script src="javascript/signup.js"></script>

</body>
</html>
