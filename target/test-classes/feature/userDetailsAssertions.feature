@ignore
Feature: Check returned Users Details by the API
	
	Background:
		* url 'https://reqres.in'
		* def expectedResult1 = read('../resources/user2Result.json')
					
	Scenario: List the User 2 all Details
		Given path '/api/users/2'
		When method get
		Then status 200
		And print response
		And match response == {"ad":{"company":"StatusCode Weekly","text":"A weekly newsletter focusing on software development, infrastructure, the server, performance, and the stack end of things.","url":"http:\/\/statuscode.org\/"},"data":{"last_name":"Weaver","id":2,"avatar":"https:\/\/s3.amazonaws.com\/uifaces\/faces\/twitter\/josephstein\/128.jpg","first_name":"Janet","email":"janet.weaver@reqres.in"}}
		And match response == expectedResult1