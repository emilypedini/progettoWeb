<?php
require_once("bootstrap.php");

$templateParams["titolo"] = "Blog TW - Home";
$templateParams["nome"] = "login-form.php";
$templateParams["articolicasuali"] = $dbh->getRandomPosts(2);
$templateParams["categorie"] = $dbh->getCategories();




require("template/base.php");
?>