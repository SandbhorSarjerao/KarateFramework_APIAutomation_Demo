@ignore
Feature: API Authentication

	Background:
		* url 'https://reqres.in'
		
	Scenario: Authentication Test
		Given path '/api/register/token'
		And form field grant_type = 'client_credentials'
		And form field client_id = ''
		And form field client_secret = ''
		When method POST
		Then status 201
		And print response
		
		* def accessToken = response.access_token
		
		Given path ''
		And header Autherization = 'Bearer' + accessToken
		When method GET
		Then status 200
		And print response