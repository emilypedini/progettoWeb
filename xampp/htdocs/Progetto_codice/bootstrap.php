<?php
session_start();
//define("UPLOAD_DIR", "./upload/"); crea una costante con valore
//require_once("utils/functions.php");inclusione di un file PHP
require_once("db/database.php");
$dbh= new DatabaseHelper("localhost", "root", "", "negozio_gelateria")
?>