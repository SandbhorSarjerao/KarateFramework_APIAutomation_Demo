@ignore
Feature: Check returned Users Details by the API
	
	Background:
		* url 'https://reqres.in'
		* def expectedResult2 = read('../resources/user3Result.json')

	Scenario: List User 3 all Details
		Given path '/api/users/3'
		When method get
		Then status 200
		And print response
		And match response == expectedResult2
		And match response.data.id == 3
		* def myFunction = function(){ return 'Hello World!...'}
		* def functionReturnedData = call myFunction
		Then print 'Function Returned Data ===> ',functionReturnedData
		* def myFunction1 = 
		"""
		function(){
			return 'Hello , This my Function Data.....'
		}
		"""
		* def functionReturnedData1 = call myFunction1
		Then print 'Function1 Returned Data ===> ',functionReturnedData1
		
		* def sum = 
		"""
		function(a,b){
			return a+b;
		}
		"""
		* def result = sum(2,3)
		And print result 
		
		