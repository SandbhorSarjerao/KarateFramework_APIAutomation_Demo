@ignore
Feature: Call Scenario from another scenario

	@SmokeTest
	Scenario:
		* print "<=== This is SmokeTest ===>"
	
	@SanityTest
	Scenario: Calling the Scenario from the SAME Feature file
		* print "<=== This is SanityTest ===>"
		* def SmokeTestResult = call read("5.callAnotherScenarios.feature@SmokeTest")
		
		
	@RegressionTest
	Scenario: Calling the Scenario from the OTHER Feature file
		* print "<=== This is Scenario Calling the Scenario from the OTHER Feature file ===>"
		* def SmokeTestResult = call read("1.getUserDetails.feature@RegressionTest")
		
		
	@RegressionTest
	Scenario: Calling the Scenario from the OTHER Feature file
		* print "<=== This is Scenario Calling the ALL Scenario from the OTHER Feature file ===>"
		* def SmokeTestResult = call read("2.getUserDetails.feature@RegressionTest")
		
	@RegressionTest
	Scenario: Calling the Scenario from the OTHER Feature file
		* print "<=== This is Scenario Calling the ALL Scenario from the OTHER Feature file ===>"
		* def SmokeTestResult = call read("2.getUserDetails.feature")