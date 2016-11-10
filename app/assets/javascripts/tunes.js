$(document).ready(function(){

	$('#search-form').on('ajax:complete', function(event, xhr, status, error) {
	  $(".results-area").empty();
	  
	  data = JSON.parse(xhr.responseText);
	  
	  $.each(data, function(d,results){
	  	console.log(results);
	  	$(".results-area").append("<div class='results-div'><ul><li>Song Title: " +  results.song_title + "</li><li>Album Title: " + results.album_title + "</li><li>Artist: " + results.artist_name + "</li></ul></div>");
	  });
	

	});


})