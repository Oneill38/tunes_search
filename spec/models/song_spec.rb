RSpec.describe Song, type: :model do
	
	before(:each) do
    	build(:artist)
    	build(:album)
    	build(:song)
  	end

	it "should belong to an album" do
		s = build(:song, name: "Tompkins Square Park")
		expect(s.album.name).to eq("Babel")
	end

end