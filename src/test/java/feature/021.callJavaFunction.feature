@ignore
Feature: Call Java Function

	Scenario: Call Java Method
		* def javaDemo = Java.type('feature.JavaFunctions.java') 
		* def result = new javaDemo().nonStaticFunction("*** World! ***")
		Then print '*** Result-1 ===> ',result
		
		* def result2 = javaDemo.staticFunction("*** World! ***")
		Then print '*** Result-2 ===> ',result2	
		
		* def javaDemo2 = Java.type('feature.WriteData.java')
		* def result3 = javaDemo2.writeData("")
		* def result3 = javaDemo2.writeData("*** This is Third Line ***")