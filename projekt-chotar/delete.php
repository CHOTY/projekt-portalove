<?php

include_once "db.php";

use portalove\db;

if (isset($_GET['id'])) {
    $db = new db('localhost', 'chotar_portalove', 'root', '');
    $delete = $db->deleteEmail($_GET['id']);

    if ($delete) {
        header("Location: admin.php");
    } else {
        echo "FATAL ERROR!";
    }
} else {
    header("location: admin.php");
}