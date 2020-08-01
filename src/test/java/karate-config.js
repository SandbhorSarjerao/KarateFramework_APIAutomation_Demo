function func() {
	
	var env = karate.username
	var env = karate.password
	
	var config = { // base config JSON
		reqresUrl : 'https://reqres.in',
	//	userName : 'sandbhorsarjerao',
	//	password : 'Test@123'
	}

	var env = karate.env; // get java system property 'karate.env'
	karate.log('karate.env system property was:', env);
	if (env == 'sit') {
		config.url = 'https://sit.in'
	} else if (env == 'prod') {
		config.url = 'https://prod.in'
	} else if (env == 'dev') {
		config.url = 'https://dev.in'
	}

	// var result = karate.callSingle('AccessTokenGeneration.feature')
	// config.authInfo = result

	function fn() {
	}

	// don't waste time waiting for a connection or if servers don't respond
	// within 5 seconds
	karate.configure('connectTimeout', 5000);
	karate.configure('readTimeout', 5000);

	return config;
}