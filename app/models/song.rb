class Song < ApplicationRecord
	belongs_to :artist
	has_many :song_genres
	has_many :genres, through: :song_genres

	validates :name, uniqueness: true

	validate :no_songs_named_bob_validator

	def no_songs_named_bob_validator
		if self.name.downcase == "bob"
			self.errors.add(:name, "No Bob songs allowed!")
		end
	end
end