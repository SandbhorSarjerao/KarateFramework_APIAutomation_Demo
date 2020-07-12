@ignore
Feature: Check returned users by the API
	
	Background:
		* url 'https://gorest.co.in'
		* header Authorization = 'Bearer _FWTKt73f0EeVrfWj7d3sKoLMnw_9dqVcs0k'
	
	Scenario: List all the users having name with John
		Given path '/public-api/users'
		And param first_name = 'john'
		And param status = 'inactive'
		When method get
		Then status 200
		And def userResponse = response
		Then match userResponse.result[*].first_name contains ["Johnson"]