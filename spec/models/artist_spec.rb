RSpec.describe Artist, type: :model do
	
	before(:each) do
    	build(:artist)
    	build(:album)
    	build(:song)
  	end

	it "should have a unique name" do
		artist = build(:artist)
		expect(artist.id).to eq(nil)
	end

end