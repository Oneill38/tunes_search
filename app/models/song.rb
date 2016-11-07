class Song < ApplicationRecord
	belongs_to :album
	has_many :searches, as: :searchable
end
