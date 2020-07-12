@ignore

Feature: Connection to Database
	
		Background:
			# use jdbc to validate
			* def config = { username: 'root', password: 'password123', url: 'jdbc:mysql://localhost:3306/sarjeraodb', driverClassName: 'com.mysql.cj.jdbc.Driver' }
			* def DbUtils = Java.type('feature.DbUtils')
			* def db = new DbUtils(config)
		
		Scenario: 
			* def names = db.readRows('select * from names')
			Then print '<=== Names ===> ',names
			
			* def write = db.insertRow('INSERT INTO names (id,name) values(3,"Shivajirao")')
			* def namesData = db.readValue('select * from names')
			Then print '<=== Names ===> ',namesData
			