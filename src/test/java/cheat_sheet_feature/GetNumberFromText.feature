Feature: Call java demo
		The feature file calls a Java method in the class called StringUtil. 
		Then saves the response of that call to otpCode variable.

Scenario: Get number from text

    Given url 'https://preview.putsbox.com/p/david/last.json'
    When method GET
    * def emailText = response.text
    * def otpCode = Java.type('StringUtil').getNumberFromString(emailText)
    * print otpCode