@ignore
Feature: Data Driven API Test

	Background:
		* url 'http://dummy.restapiexample.com'
	
	Scenario Outline: create employee data 
		Given path '/api/v1/create'
		And request {"name":<name>,"salary":<salary>,"age":<age>}
		When method POST
		Then status 200
		And print 'Response-1 ===> ',response
		
	Examples:
		| name  | salary  | age |
		| test  | 123     | 24  |
		| test2 | 1234    | 27  |
		| test3 | 12345   | 30  |