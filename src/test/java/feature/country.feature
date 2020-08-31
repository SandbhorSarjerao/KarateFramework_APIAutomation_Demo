#@ignore
Feature: Check returned Countries by API

	Background:
		* url 'https://restcountries.eu'
		* header Accept = 'application/json'
	
	Scenario: Get List of all Countries in API
		Given path '/rest/v2/all'
		When method get
		Then status 200