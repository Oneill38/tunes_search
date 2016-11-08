require 'rails_helper'

RSpec.describe Search, type: :model do
  	a = Artist.create(name: "Big Thief")
	album = Album.create(name: "Masterpiece", artist_id: a.id)
	s = Song.create(name: "Masterpiece", album_id: album.id)
	s2 = Song.create(name: "Paul", album_id: album.id)

	it "Should be created after saving a song" do
		expect(Seach.last.song_name).to eq("Paul")
	end

end
