<?php

//commentaire de Vincent blablabla

/*
 *
 * On est dans modeles/adm_modif.php !!!!!
 *
 * A suivre
 *
 *
 *
 */


// Lancement de la session
session_start();
require_once "config.php";
require_once "modeles/db.php";

if (!isset($_SESSION["mamout"])|| $_SESSION["mamout"]!= session_id()) {
    require_once "controleurs/Site.php";
}else{
    require_once "controleurs/Admin.php";
}


// test de commentaire ajouté
