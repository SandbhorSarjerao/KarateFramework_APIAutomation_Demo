@ignore
Feature: Check returned Users Details by the API
	
	Background:

					
	Scenario: List the User 2 all Details		
		Given def color = 'red '
		And def num = 5
		Then assert color + num == 'red 5'
		
		* def cat = { name: 'Billie', scores: [2, 5] }
		* assert cat.scores[1] == 5
		
		* def cats = [{ name: 'Billie' }, { name: 'Bob' }]
		* match cats[0] == { name: 'Billie' }
		* match cats[1] == { name: 'Bob' }
		* def first = cats[0]
		* match first == { name: 'Billie' }
		
		Given def user = { name: 'john', age: 21 }
		And def lang = 'en'
		When def session = { name: '#(user.name)', locale: '#(lang)', sessionUser: '#(user)'  }
		
		* def foo = { bar: '#("hello " + name)' }
		Then print '<==== foo ===> ',foo
		
		* def foo = 'a1'
		* match foo == '#("a" + 1)'
		
		When def user = { name: 'john', age: 21 }
		And def lang = 'en'
		Then print '<=== user ===>',user
		* def embedded = { name: '#(user.name)', locale: '#(lang)', sessionUser: '#(user)' }
		* def enclosed = ({ name: user.name, locale: lang, sessionUser: user })
		* match embedded == enclosed
		Then print '<=== embedded ===>',embedded
		Then print '<=== enclosed ===>',enclosed
		
		
		* table cats
		  | name   | age |
		  | 'Bob'  | 2   |
		  | 'Wild' | 4   |
		  | 'Nyan' | 3   |
		* match cats == [{name: 'Bob', age: 2}, {name: 'Wild', age: 4}, {name: 'Nyan', age: 3}]
		
		
		* def one = 'hello'
		* def two = { baz: 'world' }
		* table json
		  | foo     | bar            |
		  | one     | { baz: 1 }     |
		  | two.baz | ['baz', 'ban'] |
		* match json == [{ foo: 'hello', bar: { baz: 1 } }, { foo: 'world', bar: ['baz', 'ban'] }]
		
		
		* def one = { baz: null }
		* table json
		  | foo     | bar    |
		  | 'hello' |        |
		  | one.baz | (null) |
		  | 'world' | null   |
		* match json == [{ foo: 'hello' }, { bar: null }, { foo: 'world' }]
		
		
		* set search
		  | path       | 0        | 1      | 2       |
		  | name.first | 'John'   | 'Jane' |         |
		  | name.last  | 'Smith'  | 'Doe'  | 'Waldo' |
		  | age        | 20       |        |         |	
		* match search[0] == { name: { first: 'John', last: 'Smith' }, age: 20 }
		* match search[1] == { name: { first: 'Jane', last: 'Doe' } }
		* match search[2] == { name: { last: 'Waldo' } }
		
		
		* def text = 'hello <foo> world'
		* replace text.foo = 'bar'
		* match text == 'hello bar world'
		
		
		* def text = 'hello <one> world <two> bye'
		* replace text
		  | token | value   |
		  | one   | 'cruel' |
		  | two   | 'good'  |
		* match text == 'hello cruel world good bye'
		
		
		
		* def text = 'hello <one> world ${two} bye'
		* def first = 'cruel'
		* def json = { second: 'good' }
		* replace text
		    | token  | value       |
		    | one    | first       |
		    | ${two} | json.second |
		* match text == 'hello cruel world good bye'
		
		
		* text foo =
			  """
			  name: John
			  input:
			    id: 1
			    subType: 
			      name: Smith
			      deleted: false
			  """
			# yaml to json type conversion  
			* yaml foo = foo
			* match foo ==
			  """
			  {
			    name: 'John',
			    input: { 
			      id: 1,
			      subType: { name: 'Smith', deleted: false }    
			    }
			  }
			  """
			  
			  
			  