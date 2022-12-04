<?php
include_once "db.php";

use portalove\db;
$db=new db('localhost', 'chotar_portalove', 'root', '');

if (isset($_POST['submit'])) {
    $update = $db->updateMail($_POST['id'], $_POST['full_name'], $_POST['mail'],$_POST['message']);
    if ($update) {
        header("Location: admin.php");
    } else {
        echo "FATAL ERROR!";
    }
} else {
    header("Location: admin.php");
}