class Theater < ApplicationRecord
	has_many :timings
	has_many :movies, through: :timings
end
