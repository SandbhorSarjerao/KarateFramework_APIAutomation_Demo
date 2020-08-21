Feature: request chaining with multiple api calls

Scenario: chain request demo

    * json req = read('classpath:com/example/templates/idm/create-user-template.json')
    * def user = req.givenName

    Given header X-Username = 'anonymous'
    Given header X-Password = 'anonymous'
    Given url AM_HOST + '/some/endpoint
    And request ''
    When method POST

    * def authId = response.authId

    * def payload1 =
    """
    {"authId":"${authId}","callbacks":[{"type":"NameCallback","output":[{"name":"prompt","value":"Email Address"}],"input":[{"name":"IDToken0","value":"${user}@putsbox.com"}]}]}
    """

    * replace payload1
    | token     | value  |
    | ${authId} | authId |
    | ${user}   | user   |

    * json mypayload1 = payload1
    
    Given header X-Username = 'anonymous'
    Given header X-Password = 'anonymous'
    Given url AM_HOST + '/openam/some-other-endpoint
    And request mypayload1
    When method POST