@ignore

Feature: Manipulating Data
	
	Background:
	
	
	Scenario:
		* def myJson = { foo: 'bar' }
		* set myJson.foo = 'world'
		* match myJson == { foo: 'world' }
		
		# add new keys.  you can use pure JsonPath expressions (notice how this is different from the above)
		* set myJson $.hey = 'ho'
		* match myJson == { foo: 'world', hey: 'ho' }
		
		# and even append to json arrays (or create them automatically)
		* set myJson.zee[0] = 5
		* match myJson == { foo: 'world', hey: 'ho', zee: [5] }
		
		# omit the array index to append
		* set myJson.zee[] = 6
		* match myJson == { foo: 'world', hey: 'ho', zee: [5, 6] }
		
		# nested json ? no problem
		* set myJson.cat = { name: 'Billie' }
		* match myJson == { foo: 'world', hey: 'ho', zee: [5, 6], cat: { name: 'Billie' } }
		
		# and for match - the order of keys does not matter
		* match myJson == { cat: { name: 'Billie' }, hey: 'ho', foo: 'world', zee: [5, 6] }
		
		# you can ignore fields marked with '#ignore'
		* match myJson == { cat: '#ignore', hey: 'ho', foo: 'world', zee: [5, 6] }
		
		
		* def foo = { hello: 'world', baz: 'ban' }
		* def bar = { baz: 'ban', hello: 'world' }
		* match foo == bar
		
		* def test = { foo: 'bar' }
		* match test != { foo: 'baz' }