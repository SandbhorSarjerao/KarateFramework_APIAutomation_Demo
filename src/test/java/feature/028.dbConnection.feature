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
			
			* def write = db.deleteRow('DELETE FROM names WHERE id = 7')
			Then print "Deleted Row does NOT exist ===>",db.readRows('select * from names WHERE id = 7')
			* def names = db.readRows('select * from names')
			Then print '<=== Names ===> ',names
			
			* def write = db.insertRow('INSERT INTO names (id,name) values(7,"SNRao")')
			Then print "Inserted Row ===>",db.readRows('select * from names WHERE id = 7')
			* def namesData = db.readRows('select * from names')
			Then print '<=== Names ===> ',namesData
			
			
			
#     * db.cleanDatatable(“TRUNCATE sarjeraodb.names;”)			
			