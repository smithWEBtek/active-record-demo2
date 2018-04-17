class Song < ApplicationRecord
	belongs_to :artist
	has_many :song_genres
	has_many :genres, through: :song_genres

	validates :name, uniqueness: true

	validate :anti_bob_validator, on: :create

	def anti_bob_validator
		self.name != "Bob"
	end

end