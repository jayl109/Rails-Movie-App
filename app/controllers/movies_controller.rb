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

	def compute_avg_rating
		@movie = Movie.find(params[:id])
		@reviews = Review.all
		@movie.avg_rating = (@reviews.sum / @reviews.count).round
		@movie.save
		return @movie.avg_rating
	end
end