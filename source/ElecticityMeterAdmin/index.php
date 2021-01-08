<?php
    header("Content-Type:application/json");
    require_once('db.php');

    $database = new Database("localhost", "root", "root", "electicity_meter_admin", 8889);
    echo 'HALLO WELT!';

    $database->close();
?>