Feature: Create User in IDM
		Here we can create a “generic” create-user.feature file where we can send the create user request but with a different request body
		Here we are using ‘__arg’ as the post body request.

    Scenario: Create user in IDM with given guid
	    Given header X-Requested-With = 'Swagger-UI'
	    Given header X-OpenIDM-Username = IDM_USERNAME
	    Given header X-OpenIDM-Password = IDM_PASSWORD
	    Given url IDM_HOST + IDM_MANAGED_USER_PATH
	    And request __arg
	    When method POST
	    Then status 201