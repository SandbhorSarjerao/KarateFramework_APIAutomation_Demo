@ignore
Feature: Data Driven API Test

	Background:
		* url 'http://dummy.restapiexample.com'
	
	Scenario Outline: create employee data 
		Given path '/api/v1/create'
		And request {"name":<name>,"salary":<salary>,"age":<age>}
		When method POST
		Then status 200
#		And match response == {"status":"success","data":{"name":"test","salary":"123","age":"23","id":61}}
		And print 'Response-1 ===> ',response
		* def result = response
			
		Given path '/api/v1/employee/' + result.data.id
		When method GET
		Then status 200
		And print 'Response-2 ===> ',response
		And match response.data contains {id:'#(result.data.id)'} 
		
		Examples:
		| read('../resources/inputData.csv') |
