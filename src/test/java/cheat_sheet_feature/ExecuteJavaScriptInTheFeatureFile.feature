Feature: Generate a random session id
	In a feature file, we have the capability to execute javascript as well
	The code generates a random string of length 10 and saves it in a variable called sessionId.

    Scenario: generate random session id
	    * def random_string =
	    """
	    function(s) {
	        var text = "";
	        var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	        for (var i = 0; i < s; i++)
	        text += possible.charAt(Math.floor(Math.random() * possible.length));
	        return text;
	    }
	    """
	    * def sessionId =  random_string(10)