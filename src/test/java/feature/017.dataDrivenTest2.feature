@ignore
Feature: Data Driven API Test

	Background:
		* url 'http://dummy.restapiexample.com'
	
	Scenario Outline: create employee data 
		Given path '/api/v1/create'
		And request {"name":<name>, "salary":<salary>, "age":<age>}
		When method POST
		Then status 200
#		And match response == {"status":"success","data":{"name":"test","salary":"123","age":"23","id":61}}
		And print 'Response ===> ',response
		* def resultID = response.data.id
		And print 'resultID ===>',resultID
		

		Given path '/api/v1/employee/'+ resultID
		When method GET
		Then status 200
		And print 'Response-2 ===> ',response
		
		Examples:
		| name  | salary  | age |
		| test  | 123     | 24  |
#		| test2 | 1234    | 27  |
#		| test3 | 12345   | 30  |