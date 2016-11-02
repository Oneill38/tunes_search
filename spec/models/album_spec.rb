RSpec.describe Album, type: :model do
	a = Artist.create(name: "Lady Gaga")
	album = Album.create(name: "The Fame", artist_id: a.id)
	s = Song.create(name: "Bad Romance", album_id: album.id)
	s2 = Song.create(name: "The Fame", album_id: album.id)

	it "should belong to an Artist" do
		expect(album.artist.name).to eq("Lady Gaga")
	end

	it "should have many songs" do
		expect(album.songs.count).to eq(2)
	end

end