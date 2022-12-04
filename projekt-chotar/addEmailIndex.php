<?php

include_once "db.php";

use portalove\db;

if (isset($_POST['submit'])) {
    $db = new db('localhost', 'chotar_portalove', 'root', '');
    $addMail= $db->insertEmail($_POST['full_name'],$_POST['mail'],$_POST['message']);

    if ($addMail) {
        header("Location: index.php");

    } else {
        echo "FATAL ERROR!";
    }
} else {
    header("location: index.php");
}
