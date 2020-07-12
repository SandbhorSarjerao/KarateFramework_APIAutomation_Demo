@ignore
Feature: Create user
	
	Background: 
		* url 'http://dummy.restapiexample.com'
		* def expectedOutput = read('../resources/createUserResult.json')
		
	Scenario:
		Given path '/api/v1/create'
		And request {"name":"test","salary":"123","age":"23"}
		When method POST
		Then status 200
		And print response
		And match response == expectedOutput
		And match response.data.name == "test"
		And match response.data.salary == "123"
		And match response.data.age == "23"
		And assert response.data.name == "test"
		And match response contains {"status":"success"}
		And match response.data contains {"salary":"123"}
		And match response.status contains "success"
		And match response.status contains "suc"
#		And match response.status !contains "FAILD"
#		And match response.data[*].id contains [1,2,3]
#		And match response..id contains [1,2,3]
		
	Scenario Outline:
		Given path '/api/v1/create'
		And request {"name":<name>,"salary":<salary>,"age":<age>}
		When method POST
		Then status 200
		And print response
		And match response == expectedOutput
		And match response.data.name == <name>
		And match response.data.salary == <salary>
		And match response.data.age == <age>
		And match response contains {"status":"success"}
		And match response.data contains {"salary":"123"}
		
	Examples:
		| name  	| salary  	| age 	|
		| "test"  | "123"     | "24"  |
