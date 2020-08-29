@FR
Feature: AM Admin Login
	from the karate-config.js file AM_USERNAME, AM_PASSWORD, AM_HOST, and AM_AUTHENTICATE_PATH come
  
    Scenario: Login as Admin to AM and get token
	    Given header X-OpenAM-Username = AM_USERNAME
	    Given header X-OpenAM-Password = AM_PASSWORD
	    Given url AM_HOST + AM_AUTHENTICATE_PATH
	    And request ''
	    When method POST
	    Then status 200
	
	    * assert response.tokenId != null
	    * def tokenId = response.tokenId