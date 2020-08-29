Feature: Create a user
	call the other feature file and pass in the required post body, which in turn we can read from a template
	
    Scenario: Create user in IDM 
	    * json myReq = read('/cheat_sheet_feature/create-user-template.json')
	    * call read('classpath:/cheat_sheet_feature/idm-create-user.feature') myReq
	    * json emailAddress = '{"emailAddress": "' +myReq.mail+ '"}'
    	* call read('classpath:/cheat_sheet_feature/idm-create-user.feature') emailAddress