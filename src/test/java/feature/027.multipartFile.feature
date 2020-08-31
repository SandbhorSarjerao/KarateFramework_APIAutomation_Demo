@ignore

Feature:
	
		Background:
		
		
		Scenario:
			Given multipart file myFile = { read: 'test.pdf', filename: 'upload-name.pdf', contentType: 'application/pdf' }
			And multipart field message = 'hello world'
			When method post
			Then status 200

			
			Given path '/v2/documents'
			And multipart entity read('foo.json')
			And multipart field image = read('bar.jpg')
			And header Content-Type = 'multipart/related'
			When method post 
			Then status 201