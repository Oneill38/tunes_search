RSpec.describe Album, type: :model do
	


	it "should belong to an Artist" do
		build(:artist)
    	album = build(:album)
    	build(:song)
    	build(:song, name: "Believe")
		expect(album.artist.class).to eq(Artist)
	end

	it "should have many songs" do
		build(:artist)
    	album = create(:album)
    	s1 = Song.create(name: "test 1", album_id: album.id)
		s2 = Song.create(name: "test 2", album_id: album.id)
		expect(album.songs.count).to eq(2)
	end

end