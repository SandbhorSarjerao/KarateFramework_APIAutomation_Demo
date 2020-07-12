@ignore
Feature: Check Create New User by API
	
	Background:
		* url 'https://gorest.co.in'
		* header Content-Type = 'application/json'
		* header Autorization = 'APW2kvq3zhAYACq7Kjw-UA7cZRPs6kUSfU4I'
		
	Scenario: Create New User
		Given path '/public-api/users'
		And request {"first_name":"ABC","last_name": "PQR", "gender": "female","dob": "2019-12-14", "email":"nortiz1@example.org", "Phone": "763-624-3668 x92017", "website": "http://mitchell.org/","address":"621 Kristi Porter Apt. 249, Myaton, WA 27782-8747 ","state":"active"}
		When method POST
		Then status 200