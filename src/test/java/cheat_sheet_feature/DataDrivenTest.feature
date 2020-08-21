Feature: Data driven testing example
	The example utilizes Cucumber’s Scenario Outline and Examples keywords to create data-driven tests. 
	To read each parameter, we use the angle brackets <>

Scenario Outline: An 'Invalid input request' error is returned if required parameters have incorrect values.

    * def attribute_name = '<name_attribute>'
    * xml malformed_request = <method_call>
    * json activate_request = malformed_request

    * def activate_response = call read('activate.feature') activate_request

    * match activate_response.contentType == 'text/xml;charset=ISO-8859-1'
    * match activate_response.gas_version == '5.2.7'
    * match activate_response.error_code == '1000'

    Examples:
        | name_attribute  | method_call                                                                        |
        | auth_method     | Java.type('com.example.StringUtil').removeNodeByAttribute(xml_req, attribute_name) |
        | app_url         | Java.type('com.example.StringUtil').removeNodeByAttribute(xml_req, attribute_name) |