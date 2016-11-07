class Artist < ApplicationRecord
	has_many :albums
	has_many :songs, through: :albums
	has_many :searches, as: :searchable

	validates :name, uniqueness: true
end
