$(document).ready(function(){

	$("#search-submit").on("click", function(){
		var song = $("#search-song").text();
		var artist = $("#search-artist").text();
		var album = $("#search-album").text();

		$.ajax({
			 	type: 'GET',
			 	url: '/search',
	          	dataType: 'JSON',
	          	data: { song: song, artist: artist, album: album},
	          	success: function(data){
	          		console.log(data.name);
	          	},

		});

	});


})