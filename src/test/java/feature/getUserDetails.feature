@ignore
Feature: Check returned Users Details by the API
	
	Background:
		* url 'https://reqres.in'

	@RegressionTest
	Scenario: List the User-1 Details
		Given path '/api/users/1'
		When method get
		Then status 200
		And print response
		And assert response.data.id == 1
