@ignore @RegressionTest
Feature: Check returned Users Details by the API

	Scenario: List the User-1 Details
		Given url 'https://reqres.in/api/users/1'
		When method get
		Then status 200
		And print response
		And match response == {"ad":{"company":"StatusCode Weekly","text":"A weekly newsletter focusing on software development, infrastructure, the server, performance, and the stack end of things.","url":"http:\/\/statuscode.org\/"},"data":{"last_name":"Bluth","id":1,"avatar":"https:\/\/s3.amazonaws.com\/uifaces\/faces\/twitter\/calebogden\/128.jpg","first_name":"George","email":"george.bluth@reqres.in"}}
		And assert response.data.id == 1

	Scenario: List the User-2 Details
		Given url 'https://reqres.in/xyzapi/users/2'
		When method get
		Then status 404
		And print response

		