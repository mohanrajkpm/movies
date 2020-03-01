class Theatre < ApplicationRecord
	#has_many :screenings
	#has_many :movies, through: :screenings
	has_many :show_timings
	has_many :seats
end
