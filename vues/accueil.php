<html>
<head>
    <meta charset="UTF-8">
<title>Accueil memememememe</title>
</head>
<body>
<h1>Accueil de mon site</h1>
<?php
include 'vues/menusite.php';
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
        echo "Le ".$tab['ladate'] . "</br>";
        echo $tab['letexte'] . " <a href='?idarticle=".$tab['id']."'>... Lire la suite</a><hr/>";


    }
}

?>
</body>
</html>
