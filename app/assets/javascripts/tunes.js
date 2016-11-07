$(document).ready(function(){

	$('#search-form').on('ajax:complete', function(event, xhr, status, error) {
	  data = JSON.parse(xhr.responseText);
	  
	  $.each(data, function(d,results){
	  	$(".results-area").append("<div><h4>" + results.song_title + "</h4></div>");
	  });
	

	});


})