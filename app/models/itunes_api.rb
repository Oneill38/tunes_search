class ItunesApi
	@@base = "https://itunes.apple.com/search?term="

	def create_profile(artistName)
		artist = Artist.where(name: artistName).first_or_create

		response = HTTParty.get(@@base + artistName + "&entity=musicTrack")
		better_response = JSON.parse(response)

		better_response["results"].each do |x|
			a = Album.where(name: x["collectionName"], artist_id: artist.id).first_or_create
			Song.create(name: x["trackName"], album_id: a.id)
		end

	end

end