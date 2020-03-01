class MoviesController < ApplicationController
	before_action :authenticate_user!
	def index
		#@theaters = Theater.joins(:movies).select("theaters.name, movies.name")
		@movies = Movie.order(created_at: :desc)
	end
end
