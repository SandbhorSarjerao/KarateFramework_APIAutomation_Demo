@ignore
Feature: API Authentication

	Background:
		* url 'https://reqres.in'
		
	Scenario: Authenticaion Test
		* def params =
		"""
		{
			'email' : 'eve.holt@reqres.in',
			'password' : 'pistol'
		}
		"""

		Given path '/api/register'
		And form fields params
		When method POST
		Then status 200
		Then print response
		
		* def accessToken = response.token
		Then print 'accessToken ===> ',accessToken
		