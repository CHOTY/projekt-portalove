<?php

include_once "db.php";

use portalove\db;
$db = new db('localhost', 'chotar_portalove', 'root', '');

$emails=$db->getAllEmails();
?>
<style>
body{background-color: #BCADE0;}
</style>

<ul>
    <li><a href="index.php">Web page</a></li>
    <li><a href="admin.php">Emails</a></li>
</ul>
<br><br>
Emails:<br>
<ul>
<?php
foreach ($emails as $email) {
    echo "<li>Full Name: " . $email['name'] . ", From: " . $email['email']. " , Message: " . $email['message'] . "</li>";
    echo '<a href="delete.php?id=' . $email['id'] . '">Delete  </a>';
    echo '<a href="updateMailForm.php ?id=' . $email['id'] . '">Update  </a>';
}
?>
    <form action="addMail.php">
        <input type="submit" name="submit" value="Add">
    </form>
</ul>
