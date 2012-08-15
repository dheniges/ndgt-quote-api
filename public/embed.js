ndgt_quotes = {
	init: function() {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open('GET', 'http://0.0.0.0:3000/quote_api/random.jsonp?callback=ndgt_quotes.parseResponse', true);
		xmlhttp.send();
		
		xmlhttp.onreadystatechange=function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
		    	eval(xmlhttp.response);
		    }
		}
	},
	
	parseResponse: function(response) {
		var div = document.getElementById('ndgtQuote');
		div.innerHTML = response.quote + "<br />- Neil deGrasse Tyson";
	}
};

ndgt_quotes.init();