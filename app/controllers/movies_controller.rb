class MoviesController < ApplicationController
	def index
		@movies = Movie.all
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