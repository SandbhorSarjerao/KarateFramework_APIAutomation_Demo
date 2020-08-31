@ignore
Feature: User Details

	Background:
		* url 'https://reqres.in'
		* def expectedOutput = read('../resources/userResultPage2.json')
		
	Scenario: GET call Authenticaion Test
		Given path '/api/users?page=2'
		When method GET
		Then status 200
		And print response
		And match response == expectedOutput
		And print response.data.url == '#notpresent'
		And match response.data[5].name == "blue turquoise"
		And match $.data[5].name == "blue turquoise"
		And match response.data[0].email == '#notpresent'
		And match response.page == '#number'
		And match response.total == '#number'
		And match $.data[5].name == '#string'
		And match $.page == '#number'
		And match $.total == '#number'
		
		* def sum = 
		"""
		function(a,b){
			return a+b;
		}
		"""
		* def result = sum(2,3)
		And assert sum(2,3) == 5
		And print 'Result Of sum(2,3) ===>',result 
		