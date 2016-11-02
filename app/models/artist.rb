class Artist < ApplicationRecord
	has_many :albums
	has_many :songs, through: :albums

	validates :name, uniqueness: true
end
