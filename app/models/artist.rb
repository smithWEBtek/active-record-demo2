class Artist < ApplicationRecord
	has_many :songs

	scope :chicagoans, -> {where(hometown: 'Chicago')}

end