@ignore
Feature: Check returned Users Details by the API
	
	Background:
		* url 'http://dummy.restapiexample.com'
		* def expectedResult1 = read('../resources/user4Result.json')
					
	Scenario: create employee data 
		Given path '/api/v1/create'
		And request {"name":"test", "salary":123, "age":24}
		When method POST
		Then status 200
		And print 'Response-1 ===> ',response
		And match response == {"data":{"name":"test","id":"#ignore","salary":123,"age":24},"message":"Successfully! Record has been added.","status":"success"}
		And match response == expectedResult1
		And match response.data.name == "test"
		And match response.data contains {"salary": 123}
		And match response contains {"status": "success"}
		And match response.status contains "success"
		And match response.data[*].id !contains [6,8,9]
		And assert response.data.age == 24
		And assert response.data.age > 18
		And assert response.data.name == "test"
		
		