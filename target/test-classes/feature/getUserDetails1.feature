@ignore
Feature: Check returned Users Details by the API
	
	Background:
		* url 'https://reqres.in'
		* def expectedResult1 = read('../resources/user2Result.json')
		* def expectedResult2 = read('../resources/user3Result.json')
		* def expectedResult3 = read('../resources/userResultArray.json')

	Scenario: List the User-1 Details
		Given path '/api/users/1'
		When method get
		Then status 200
		And print response
		And assert response.data.id == 1
					
	Scenario: List the User-2 all Details
		Given path '/api/users/2'
		When method get
		Then status 200
		And print response
		And match response == {"ad":{"company":"StatusCode Weekly","text":"A weekly newsletter focusing on software development, infrastructure, the server, performance, and the stack end of things.","url":"http:\/\/statuscode.org\/"},"data":{"last_name":"Weaver","id":2,"avatar":"https:\/\/s3.amazonaws.com\/uifaces\/faces\/twitter\/josephstein\/128.jpg","first_name":"Janet","email":"janet.weaver@reqres.in"}}
		And match response == expectedResult1
		And match response.data.id == 2
		And assert response.data.id == 2
		And match response.data.last_name != null

	Scenario: List User-3 all Details
		Given path '/api/users/3'
		When method get
		Then status 200
		And print response
		And match response == expectedResult2
		And match response.data.id == 3

	@parallel=false
	Scenario: List User 3 all Details
		Given path '/api/users/3'
		When method get
		Then status 200
		And print response
		And match response == expectedResult3[1]
#		And match response.data[*].id contains [1,2,3]
#		And match response..id contains [1,2,3]	
