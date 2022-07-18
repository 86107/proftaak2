<?php

$query = "SELECT * FROM posts ORDER BY post_id DESC";
$data = mysqli_query($conn,$query);
while($row = mysqli_fetch_assoc($data))
{
    $post_text = $row['post_text'];
    $post_date = $row['post_date'];
    
?>

<div class="tweet-box">
    <div class="tweet-left">
        <img src="../img/avatar.png" alt="">
    </div>
    <div class="tweet-body">
        <div class="tweet-header">
            <p class="tweet-name">Anonieme gebruiker</p>
            <p class="tweet-date"><?php echo $post_date = date ('M d'); ?></p>
        </div>

        <p class="tweet-text"><?php echo $post_text; ?></p>

        <div class="tweet-icons">
            <i onclick="myFunction(this)" class="far fa-heart" id="iconheart"></i>
        </div>
    </div>
</div>
<script>
    function myFunction(x) {
  x.style.color = 'red';
}
</script>
<?php
}
?>