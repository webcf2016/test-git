<html>
<head>
    <meta charset="UTF-8">
<title>Modifier / supprimer</title>
    <script src="vues/js/monjs.js"></script>
</head>
<body>
<h1>Modifier / supprimer</h1>
<h2>Bienvenue <?=$_SESSION['login']?></h2>
<?php

if(isset($_GET['del'])) echo "<h4>Article supprimé</h4>";


require "vues/menu.inc.php";

if($nb == 0){
    echo "Pas encore d'articles";
}else {
    foreach ($tab_article AS $tab) {

        $login = explode("|||",$tab['login']);
        $affiche="";
        foreach ($login as $log){

            $affiche .= $log.", ";

        }

        echo "<h2>".$tab['titre'] . " par ";
        echo substr($affiche, 0, -2)."</h2>";
        echo "Le ".$tab['ladate'] . "<br/>";
        echo $tab['letexte'] . "<br/>";
        if($_SESSION['modifietous'] || $_SESSION['modifie']){
            echo "<a href='?modif=".$tab['id']."'><img src='vues/img/editer.gif'  alt='modifier' /></a>";
        }
        if($_SESSION['supprimetous'] || $_SESSION['supprime']){
            ?>
<img src='vues/img/delete.png' onclick="confirmDelete('<?=$tab['titre']?>',<?=$tab['id']?>)" alt='supprimer' />
<?php
        }
        echo "<hr/>";


    }
}

?>
</body>
</html>
