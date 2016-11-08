require 'rails_helper'

RSpec.describe Search, type: :model do
	
	before(:each) do
    	create(:artist)
    	create(:album)
    	create(:song)
  	end

	it "Should be created after saving a song" do
		expect(Search.last.song_title).to eq("Monster")
	end

end
