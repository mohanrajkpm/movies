class Movie < ApplicationRecord
	has_many :timings
	has_many :theaters, through: :timings
end
