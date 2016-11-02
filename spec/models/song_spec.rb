RSpec.describe Song, type: :model do
	a = Artist.create(name: "Wild Child")
	album = Album.create(name: "Wild Child", artist_id: a.id)
	s = Song.create(name: "Break Bones", album_id: album.id)
	s2 = Song.create(name: "Bullets", album_id: album.id)

	it "should belong to an album" do
		expect(s.album.name).to eq("Wild Child")
	end

end