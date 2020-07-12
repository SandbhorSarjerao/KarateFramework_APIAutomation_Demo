@ignore
Feature: Call to Toekn Generation Feature for API Authentication

	Background:
		* url 'https://reqres.in'
		* def myFeature = call read('AccessTokenGeneration.feature')
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
#		Then print '<=== DATA === > ',data
		* def myFunction = 
		"""
		function(arg){
			for(i=0; i<arg.length; i++){
				if(arg[i].id==5){
					return arg[i].name
				}
			}
		}
		"""
		* def UserDetails = call myFunction data
		Then print 'Function Returned User Data ===> ',UserDetails
		* def javaDemo = Java.type('feature.WriteData2')
		* def result = javaDemo.writeData(UserDetails)
		