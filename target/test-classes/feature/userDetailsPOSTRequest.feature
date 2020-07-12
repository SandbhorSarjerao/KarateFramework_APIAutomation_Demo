@ignore
Feature: Create user with POST Request

	Background:
		* url 'https://reqres.in'
		* def jsonPayload = read('../resources/createUser1.json')
		
	Scenario: Create user details
		Given path '/api/users'
		And request '{"name": "morpheus","job": "leader"}'
		And header Content-Type = 'application/json'
		And header Accept = 'application/json'
		When method post
		Then status 201
		Then print 'Response ===> ',response
		
	Scenario: Create user details by user payload from File
		Given path '/api/users'
		And request jsonPayload
		And param delay = 3
		And headers {Content-Type:'application/json', Accept:'application/json'}
		When method post
		Then status 201
		Then print 'Response ===> ',response