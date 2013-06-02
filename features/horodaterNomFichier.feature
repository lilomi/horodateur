Feature: horodater un fichier
	Pour mettre àjour la date dans le nom du fichier
	Comme préparateur de livraison
	je veux remplacer la date présente dans le nom du fichier par la date du jour

Scenario: Remplacer la date dans une chaine par la date du jour
	Given un nom avec la date 20130410
	And la nouvelle date 31/05/2013
	When je remplace l'ancienne date par la nouvelle 
	Then  le nom idu fichiercontient "20130531"
	
