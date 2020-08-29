@ignore
Feature: API Authentication

	Background:
		* url 'https://reqres.in'
		
	Scenario: Authenticaion Test
		Given path '/api/register'
		And form field email = '#(email)'
		And form field password = '#(password)'
		When method POST
		Then status 400
		Then print response
		
		* def accessToken = response.token
		Then print 'accessToken ===> ',accessToken
		
	
		