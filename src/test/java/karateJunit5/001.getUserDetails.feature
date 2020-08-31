@ignore
Feature: Check returned Users Details by the API

	@SmokeTest @RegressionTest 
	Scenario: List the User-1 Details
		Given url 'https://reqres.in/api/users/1'
		When method get
		Then status 200
		And print response
		And assert response.data.id == 1

	@RegressionTest
	Scenario: List the User-2 Details
		Given url 'https://reqres.in/xyzapi/users/2'
		When method get
		Then status 404
		And print response

		