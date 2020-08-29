@ignore @RegressionTest
Feature: Check returned Users Details by the API
	
	Background:
		* def featureFile = read('1.getUserDetails.feature')
		* def result = call featureFile
#		* def result = call read('1.getUserDetails.feature')

	Scenario: List the User-1 Details
		And print '<=== Feature File Data ===> ',result
		And print '<=== IDM_USERNAME ===>',result.IDM_USERNAME
		* def responseStatus = result.responseStatus
		And print '<=== responseStatus From Another Feature File Data ===> ',responseStatus