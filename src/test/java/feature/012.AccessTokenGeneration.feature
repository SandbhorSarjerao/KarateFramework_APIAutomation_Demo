@ignore
Feature: API Authentication

	Background:
		* url 'https://reqres.in'
		
	Scenario: Authenticaion Test
		Given path '/api/register'
		* def response = {"token_type":"Bearer","expires_in":"","ext_expires_in":"","expires_on":"","not_before":"","resource":"","access_token":"dfsdf3dfsdf5dsfsdfsdf3dfdsfsdfdsg5fdsr3"}
		* def accessToken = response.access_token
		Then print 'accessToken ===> ',accessToken
		
	
		