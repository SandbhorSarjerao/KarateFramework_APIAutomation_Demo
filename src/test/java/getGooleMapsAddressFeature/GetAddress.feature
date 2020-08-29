Feature:
	This feature will test send Request for Google-Maps with Location to Get Address which is required
	
	Scenario: Verify that the Maps data are received when sending address to the Google-Map Service
		Given url 'http://restapi.demoqa.com/utilities/weather/city/Mumbai'
		When method get
		Then status 200		
		
# mvn test -Dtest=karateRunner