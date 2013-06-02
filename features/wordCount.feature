Feature: horodater un fichier
	Pour mettre àjour la date dans le nom du fichier
	Comme préparateur de livraison
	je veux remplacer la date présente dans le com du fichier par la date du jour

Scenario: Remplacer la date dans une chaine par la date du jour
	Given a certain amount of text
	When I count the word 
	Then the result is the number of word in the text
	
