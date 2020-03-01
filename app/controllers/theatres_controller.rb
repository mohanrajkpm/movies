class TheatresController < ApplicationController
	before_action :authenticate_user!
	def index
		@movie = Movie.find(params[:movie_id])
		@screenings = Screening.order(start_date: :asc).where(movie_id: params[:movie_id])
	end
end
