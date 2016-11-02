RSpec.describe Artist, type: :model do
	bIver = Artist.create(name: "Bon Iver")

	it "should have a unique name" do
		bi = Artist.create(name: "Bon Iver")
		expect(bi.id).to eq(nil)
	end

end