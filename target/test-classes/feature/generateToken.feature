Feature: Check Generated Token by API

	Background: 
		* url 'https://restful-booker.herokuapp.com'
		* header Content-Type = 'application/json'
	
	Scenario: Create a Token
		Given path '/auth'
		And request {"username" : "admin", "password" : "password123" }
		When method POST
		Then status 200