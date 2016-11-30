class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end
	def subscribe
		m = Movie.find(params[:id])
		current_viewer.movies<<m
		redirect_to "/movies"
		end
	def unsubscribe
		m = Movie.find(params[:id])
		current_viewer.movies.delete(m)
		redirect_to "/movies"
		end

	def show
		@movie = Movie.find(params[:id])
		@reviews = Review.all
	end
end