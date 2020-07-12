@ignore
Feature: API Authentication

	Background:
		* url 'https://reqres.in'
		
	Scenario: Authenticaion Test
		Given path '/api/register'
		And form field email = 'eve.holt@reqres.in'
		And form field password = 'pistol'
		When method POST
		Then status 200
		Then print response
		
		* def accessToken = response.token
		Then print 'accessToken ===> ',accessToken
		