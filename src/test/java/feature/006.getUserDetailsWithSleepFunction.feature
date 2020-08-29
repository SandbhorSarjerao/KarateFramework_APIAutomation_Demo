@ignore
Feature: Check returned Users Details by the API
	
	Background:
		* url 'https://reqres.in'
		* def expectedResult1 = read('../resources/user2Result.json')
		* def expectedResult3 = read('../resources/userResultArray.json')
		* def sleep =
		"""
		function(seconds) {
			for(i=0; i<=seconds; i++) {
				java.lang.Thread.sleep(1*1000);
			}
		}
		"""
					
	Scenario: List the User 2 all Details
		Given path '/api/users/2'
		And cookie date = 'new'
		When method get
		Then status 200
		And print response
		* call sleep 10
		And match response == {"ad":{"company":"StatusCode Weekly","text":"A weekly newsletter focusing on software development, infrastructure, the server, performance, and the stack end of things.","url":"http:\/\/statuscode.org\/"},"data":{"last_name":"Weaver","id":2,"avatar":"https:\/\/s3.amazonaws.com\/uifaces\/faces\/twitter\/josephstein\/128.jpg","first_name":"Janet","email":"janet.weaver@reqres.in"}}
		And match response == expectedResult1
		And match response.data.id == 2
		And match response.data.last_name != null
		
	@parallel=false
	Scenario: List the User 4 all Details
		Given path '/api/users/4'
		And cookie date = 'new'
		When method get
		* call sleep 3
		Then status 200
		And print response
		And match response == expectedResult3[3]


	