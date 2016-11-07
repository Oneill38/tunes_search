$(document).ready(function(){

	$('#search-form').on('ajax:complete', function(event, xhr, status, error) {
	  data = JSON.parse(xhr.responseText);
	  console.log(data);
	});


})