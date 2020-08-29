Feature: Password Encryption Test Demo

  Background:
    * def appConfig = read('application-config.json')
    * set appConfig.userName = karate.properties["test.username"]
    * set appConfig.passWord = karate.properties["test.password"]

  Scenario: Test Password Encryption
    * def args = {}
    * set args.userName = appConfig.userName
    * set args.passWord = appConfig.passWord
    * print 'UserName: ', userName
    * print 'PassWord: ', passWord