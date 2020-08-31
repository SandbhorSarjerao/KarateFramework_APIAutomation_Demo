@ignore
Feature: Call to Toekn Generation Feature for API Authentication

	Background:
		* url 'https://reqres.in'
		* def myFeature = call read('011.AccessTokenGeneration.feature') {email: 'eve.holt@reqres.in', password: 'pistol'}
		* def authToken = myFeature.accessToken
		
		
	Scenario: GET call Authenticaion Test
		Given path '/api/users?page=2'
		And form field email = 'eve.holt@reqres.in'
		And form field password = 'pistol'
		And header Autherization = authToken
		When method GET
		Then status 200
		Then print response
		* def data = response.data
		Then print '<=== DATA === > ',data
		* def myFunction = 
		"""
		function(arg){
			return arg.length
		}
		"""
		* def numberOfUsers = call myFunction data
		Then print 'Function Returned numberOfUsers ===> ',numberOfUsers
		
		* def myFunction1 = 
		"""
		function(arg){
			return arg[0].id
		}
		"""
		* def usersID = call myFunction1 data
		Then print 'Function Returned usersID ===> ',usersID
		