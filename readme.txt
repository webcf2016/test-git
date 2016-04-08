/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

Session sécurisée et modèle MVC 

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/


PAGES VISIBLES UNIQUEMENT NON CONNECTES :
/*++++++++++++++++++++++++++++++++++++++*/

Dans ces 2 pages, affichez un formulaire de connexion à coté du menu (contenant 'retour à l'accueil')

- Accueil:

Affichez sur la page d'accueil tous les articles (Affichez "pas d'article" si vide, sinon affichez les avec les 100 premiers caractères puis "lire la suite") avec le nom des auteurs (si plusieurs). 


- détail article:

Affichez l'article avec le texte complet (et les auteurs)


Si on se connecte, et que l'on échoue, affichez un message d'erreur, si on réussit, on est redirigé vers 
les pages d'admin (contrôleur Admin.php).

!!! Tant que l'on est connecté, on a plus accès à l'accueil et au détail article !!!


PAGES VISIBLES UNIQUEMENT POUR LES CONNECTES :
/*+++++++++++++++++++++++++++++++++++++++++++*/

Dans ces pages, affichez un lien de déconnexion à coté du menu (contenant 'retour à l'accueil de l'admin')

- Accueil admin:

Affichez les possibilités que l'utilisateur a pour le crud (create, read, update, delete) (genre de sous menu).

- create (peut se trouver sur l'accueil admin)

Formulaire pour entrer un article, l'auteur doit être lié à l'article, on doit pouvoir cocher d'autres 
auteurs pour ce même article.

- update Et delete

Page listant les articles de l'auteur, en lui permettant (si il a les droits!) de modifier ou supprimer
ses articles

- update tous Et delete tous

Page listant les articles de tous les auteurs, en lui permettant (si il a les droits!) de modifier ou supprimer
ces articles