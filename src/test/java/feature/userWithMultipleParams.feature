@ignore
Feature: Check returned users by the API
	
	Background:
		* url 'https://gorest.co.in'
		* header Authorization = 'Bearer _FWTKt73f0EeVrfWj7d3sKoLMnw_9dqVcs0k'
	
	Scenario: List all the users having name with John
		* def params =
		"""
		{
			'first_name' : 'john',
			'status' : 'inactive'
		}
		"""
		Given path '/public-api/users'
		And form fields params 
		When method GET
		Then status 200
		And def userResponse = response
		Then match userResponse.result[*].first_name contains ["Johnson"]
		And print 'Response ===> ', userResponse