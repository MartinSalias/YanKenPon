Feature: contador de tenis

Scenario: titulo
	Given voy a la pagina principal
	Then veo "Tenis"

Scenario: primer punto de A
	Given voy a la pagina principal
	When hace punto "A"
	Then veo "15-0"

Scenario: primer punto de B
	Given voy a la pagina principal
	When hace punto "B"
	Then veo "0-15"

Scenario: primer punto en A y B
	Given voy a la pagina principal
	When hace punto "A"
	And hace punto "B"
	Then veo "15 iguales"

Scenario: primer punto B
	Given voy a la pagina principal
	When hace punto "B"
	Then veo "0-15"

Scenario: primer punto B y segundo punto en B
	Given voy a la pagina principal
	When hace punto "B"
	And hace punto "B"
	Then veo "0-30"

Scenario: primer, segundo y tercer punto A
	Given voy a la pagina principal
	When hace punto "A"
	And hace punto "A"
	And hace punto "A"
	Then veo "40-0"
	

