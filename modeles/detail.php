<?php
$sql = "SELECT a.id, a.titre,
GROUP_CONCAT(u.lelogin SEPARATOR '|||' )AS login, a.texte, a.ladate
       FROM article a
       INNER JOIN article_has_utilisateur h
       ON a.id = h.article_id
       INNER JOIN utilisateur u
        ON u.id = h.utilisateur_id
        WHERE a.id = $idarticle

       ";
$req_article = mysqli_query($mysqli, $sql)or die(mysqli_error ($mysqli));

$tab_article = mysqli_fetch_assoc($req_article);
//var_dump($tab_article);
if(empty($tab_article['id'])){
     $erreur = "Cet article n'existe plus";
}