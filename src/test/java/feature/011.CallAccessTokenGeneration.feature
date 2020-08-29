@ignore
Feature: Call to Token Generation Feature for API Authentication

	Background:
		* url 'https://reqres.in'
		* def myFeature = call read('011.AccessTokenGeneration.feature') {email: 'eve.holt@reqres.in', password: 'pistol'}
		* def authToken = myFeature.accessToken
			
	Scenario: GET call Authenticaion Test
		Given path '/api/users?page=2'
		And header Autherization = authToken
		When method GET
		Then status 200
		Then print response
		