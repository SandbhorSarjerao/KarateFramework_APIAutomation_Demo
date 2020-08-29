@ignore
Feature: Call to Token Generation Feature for API Authentication

	Background:
		* def myFeature = call read('012.AccessTokenGeneration.feature') {email: 'eve.holt@reqres.in', password: 'pistol'}
		* def authToken = myFeature.accessToken
			
	Scenario: GET call Authenticaion Test
		Then print 'authToken ===> ',authToken
		