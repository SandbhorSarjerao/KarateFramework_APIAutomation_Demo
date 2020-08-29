@ignore @RegressionTest
Feature: Check returned Users Details by the API
	
	Background:
		* def featureFile = read('getUserDetails.feature')
		* def result = call featureFile
#		* def result = call read('getUserDetails.feature')

	Scenario: List the User-1 Details
		And print '<=== Feature File Data ===> ',result
		* def responseStatus = result.response.responseStatus
		And print '<=== responseStatus From Another Feature File Data ===> ',responseStatus