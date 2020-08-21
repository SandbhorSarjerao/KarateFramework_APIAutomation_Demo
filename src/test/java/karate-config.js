function func() {
	
	/*
	 	This is where you can create variables which have a global scope. 
	 	Karate reads this file before executing any scenario. 
	 	This comes in very handy when switching environments which specific variables are used for different environments
	 */
	
	var env = karate.username
	var env = karate.password
	
	var config = { 
			// base config JSON
			 env: env,
		reqresUrl : 'https://reqres.in',
	//	userName : 'sandbhorsarjerao',
	//	password : 'Test@123',
		
		AM_USERNAME: 'devuser',
	    AM_PASSWORD: 'devpass',
	    AM_HOST: 'https://am.'+env+'.example.net',
	    AM_AUTHENTICATE_PATH: '/am/json/realms/root/authenticate',

	    IDM_USERNAME: 'devuser',
	    IDM_PASSWORD: 'devpass',
	    IDM_HOST: 'https://idm.'+env+'.example.net',
	    IDM_MANAGED_USER_PATH: '/idm/managed/user',
	}

	var env = karate.env; // get java system property 'karate.env'
	karate.log('karate.env selected environment was:', env);
	karate.configure("ssl", true)
	
	if (env == 'sit') {
		config.url = 'https://sit.in'
	} else if (env == 'prod') {
		config.url = 'https://prod.in'
	} else if (env == 'dev') {
		config.url = 'https://dev.in'
	} else if(env == 'qa') {
	    config.AM_USERNAME: 'myUserName'
	        config.AM_PASSWORD: 'myPa55word'
	} else if(env == 'live') {
	            config.AM_USERNAME: 'admin'
	            config.AM_PASSWORD: 'secret'
	}

	// var result = karate.callSingle('AccessTokenGeneration.feature')
	// config.authInfo = result

	function fn() {
	}

	karate.log('OpenAM Host:', config.AM_HOST);
	// don't waste time waiting for a connection or if servers don't respond
	// within 5 seconds
	
	karate.configure('connectTimeout', 5000);
	karate.configure('readTimeout', 5000);

	return config;
}