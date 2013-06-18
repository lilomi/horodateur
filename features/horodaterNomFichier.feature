Feature: horodater un fichier
	Pour mettre àjour la date dans le nom du fichier
	Comme préparateur de livraison
	je veux remplacer la date présente dans le nom du fichier par la date du jour

Scenario: Mettre à jour le nom du fichier existant sur le disque
  Given un fichier nomme "nomFichier20130512_000.txt"
	When je horodate le fichier avec la date du "01/06/2013"
	Then le fichier se nomme maintenant "nomFichier20130601_000.txt"
	
