Feature: Jenins Build Job Demo with Karate
	
	Background:
		# 1. Goto Jenkins.war folder loaction
		# 2. Open cmd prompt
		# 3. Type the command java -jar Jenkins.war
		# 4. Open the Browser and in Address bar type "http://localhost:8080/"
		# 5. Check Jenkins is up and running 
	
	Scenario: Test and Verify Jenkins is up and running
		Given url 'http://localhost:8080/api/json?pretty=true'
		When method get
		Then status 403
	
	@ignore
	Scenario: Test and Verify Jenkins is up and running
		Given url 'http://localhost:8080/api/json?pretty=true'
		When method get
		Then status 200