@ignore
Feature: User Details

	Background:
		* url 'https://reqres.in'
		* def expectedOutput = read('../resources/userResultPage2.json')
		
	Scenario: GET call Authenticaion Test
		Given path '/api/users?page=2'
		When method GET
		Then status 200
#		And print response
		And match response == expectedOutput
		And print response.data.url == '#notpresent'
#		And match response.data[0].email == 
		And match response.page == '#number'
		And match response.total == '#number'
		And match $.page == '#number'
		And match $.total == '#number'