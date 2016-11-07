class Song < ApplicationRecord
	belongs_to :album

	after_create :add_searchable

	def add_searchable
		Search.create(song_title: self.name, album_title: self.album.name, artist_name: self.album.artist.name)
	end

end
