class Movie < ApplicationRecord
	has_many :screenings
	has_many :show_timings, through: :screenings
end
