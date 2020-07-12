function func(){
	var config = {
			reqresUrl : 'https://reqres.in'
	}
	var env = karate.env
	if(env=='sit'){
		config.url = 'https://sit.in'
	}
	else if(env=='prod'){
		config.url = 'https://prod.in'
	}
	else if(env=='dev'){
		config.url = 'https://dev.in'
	}
	
	var result = karate.callSingle('AccessTokenGeneration.feature')
	config.authInfo = result
	
	function fn() {
		 }
	
	return config;
}