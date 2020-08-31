@ignore
Feature: User Details

	Background:
		* url reqresUrl
		* def expectedOutput = read('../resources/userResultPage2.json')
		
	Scenario: GET call Authenticaion Test
		Given path '/api/users?page=2'
		When method GET
		Then status 200
		And print response
		And match response == expectedOutput
#		And print '*** reqresUrl Value *** ',reqresUrl
#		And print '<=== authInfo ====> ',authInfo
#		And print '<=== Access Token ====> ',authInfo.accessToken
#		And print '<=== Token ====> ',authInfo.response.token
#		And print '<=== Response ID ====> ',authInfo.response.id
#		And print '<=== Content-Type ====> ',authInfo.responseHeaders.Content-Type
#		And print '<=== Connection ====> ',authInfo.responseHeaders.Connection
#		And print '<=== Response Time ====> ',authInfo.responseTime
#		And print '<=== Server ====> ',authInfo.responseHeaders.Server
		