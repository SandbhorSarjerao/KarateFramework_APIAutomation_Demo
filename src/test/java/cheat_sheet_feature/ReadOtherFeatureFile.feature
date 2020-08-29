Feature: Create User in IDM
 Read a specific variable in the called feature file which is passed from a calling feature file
 
    Scenario: Create user in IDM with given guid
	    Given header X-Requested-With = 'Swagger-UI'
	    Given header X-OpenIDM-Username = IDM_USERNAME
	    Given header X-OpenIDM-Password = IDM_PASSWORD
	    Given url IDM_HOST + IDM_MANAGED_USER_PATH
	    And request __arg.emailAddress
	    When method POST
	    Then status 201