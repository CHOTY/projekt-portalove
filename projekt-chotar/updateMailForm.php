<?php
include_once "db.php";

use portalove\db;
$db=new db('localhost', 'chotar_portalove', 'root', '');
$mail=$db->getEmail($_GET['id']);
?>
<style>
    body{background-color: #BCADE0;}
</style>
<form action="updateEmail.php" method="post">
    Email:<br><br>
    Full name:<br>
    <input type="text" name="full_name" value="<?php echo $mail[0]['full_name']; ?>"/><br>
    Email Adress:<br>
    <input type="text" name="mail" value="<?php echo $mail[0]['mail']; ?>"/><br>
    message:<br>
    <textarea name="message"><?php echo $mail[0]['message']; ?></textarea>
    <input type="hidden" name="id" value="<?php echo $mail[0]['id']; ?>"/>

    <input type="submit" name="submit" value="Update"/>
</form>
