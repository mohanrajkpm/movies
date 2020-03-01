class Screening < ApplicationRecord
	belongs_to :movie
	belongs_to :show_timing
end
