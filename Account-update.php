<?php

include 'php/config.php';
session_start();
$user_id = $_SESSION['unique_id'];

if(isset($_POST['update_profile'])){

   $update_name = mysqli_real_escape_string($conn, $_POST['update_name']);
   $update_email = mysqli_real_escape_string($conn, $_POST['update_email']);

   mysqli_query($conn, "UPDATE `users` SET uname = '$update_name', email = '$update_email' WHERE unique_id = '$user_id'") or die('query failed');

   $old_pass = $_POST['old_pass'];
   $update_pass = mysqli_real_escape_string($conn, md5($_POST['update_pass']));
   $new_pass = mysqli_real_escape_string($conn, md5($_POST['new_pass']));
   $confirm_pass = mysqli_real_escape_string($conn, md5($_POST['confirm_pass']));

   if(!empty($update_pass) || !empty($new_pass) || !empty($confirm_pass)){
      if($update_pass != $old_pass){
         $message[] = 'Old password not matched!';
      }elseif($new_pass != $confirm_pass){
         $message[] = 'Confirm password not matched!';
      }else{
         mysqli_query($conn, "UPDATE `users` SET password = '$confirm_pass' WHERE unique_id = '$user_id'") or die('query failed');
         $message[] = 'Password updated successfully!';
      }
   }

   $update_image = $_FILES['update_image']['name'];
   $update_image_size = $_FILES['update_image']['size'];
   $update_image_tmp_name = $_FILES['update_image']['tmp_name'];
   $update_image_folder = 'php/images/'.$update_image;

   if(!empty($update_image)){
      if($update_image_size > 2000000){
         $message[] = 'Image is too large';
      }else{
         $image_update_query = mysqli_query($conn, "UPDATE `users` SET img = '$update_image' WHERE unique_id = '$user_id'") or die('query failed');
         if($image_update_query){
            move_uploaded_file($update_image_tmp_name, $update_image_folder);
         }
         $message[] = 'Image updated succssfully!';
      }
   }


}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>FLIX-Media</title>
   <link rel="icon" href="img/Flix-Media Logo DarkMode.ico">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   

</head>
<body>
   
   <?php
         if(isset($message)){
            foreach($message as $message){
               echo '<div class="message">'.$message.'</div>';
            }
         }
?>
<?php
include('inc/navbarnochat.php')
?>
<div class="update-profile">
   <?php
      $select = mysqli_query($conn, "SELECT * FROM `users` WHERE unique_id = '$user_id'") or die('query failed');
      if(mysqli_num_rows($select) > 0){
         $fetch = mysqli_fetch_assoc($select);
      }
   ?>

   <form action="" method="post" enctype="multipart/form-data">
   <div class="update_profiletags">
      </div>
      </div>
      <div class="display-profilepicture">
         <?php
            if($fetch['img'] == ''){
               echo '<img src="images/default-avatar.png">';
            }else{
               echo '<img class="display-profilepicture" src="php/images/'.$fetch['img'].'">';
            }
         ?>
      </div>
      </div>
      <div class ="boxaccount">
      </div>
      <div class="flex">
         <div class="inputBox">
            <span>Gebruikersnaam:</span>
            <input  name="update_name" value="<?php echo $fetch['uname']; ?>" class="box"><br>
            <span>Jouw email:</span>
            <input type="email" name="update_email" value="<?php echo $fetch['email']; ?>" class="box"><br>
            <span>Update jouw profielfoto:</span><br>
            <input type="file" name="update_image" accept="image/jpg, image/jpeg, image/png" >
            <input type="hidden" name="old_pass" value="<?php echo $fetch['password']; ?>"><br>
            <span>Huidig wachtwoord:</span>
            <input type="password" name="update_pass" placeholder="Vul huidig wachtwoord in" class="box"><br>
            <span>Nieuw wachtwoord:</span>
            <input type="password" name="new_pass" placeholder="Vul nieuw wachtwoord in" class="box"><br>
            <span>Bevestig nieuw wachtwoord:</span>
            <input type="password" name="confirm_pass" placeholder="Bevestig nieuw wachtwoord" class="box"><br>
         </div>
         <!-- <div class="inputBox">
            <span>Update your banner:</span>
            <input type="file" name="update_banner" accept="image/jpg, image/jpeg, image/png" class="box">
            <span>Country :</span>
            <input type="text" name="update_country" value="<?php echo $fetch['country']; ?>" class="box">
            <span>Province :</span>
            <input type="text" name="update_province" value="<?php echo $fetch['province']; ?>" class="box">
            <span>Change bio :</span>
            <input type="text" name="update_bio" maxlength="100" value="<?php echo $fetch['bio']; ?>" class="box">
         </div> -->
      </div>
      <button input type="submit" name="update_profile" class="btn"><i class="fa-solid fa-floppy-disk fa-2xl"></i></button>
   </form>


</body>
</html>

