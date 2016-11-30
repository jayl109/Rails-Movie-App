class ReviewsController < ApplicationController
	def index
		@reviews = Review.all
	end

	def delete
		@review = Review.find(params[:id])
		@review.destroy
		redirect_to "/reviews/index"
	end

	def new
		@review = Review.new
		@movie_id = params[:id]
	end

	def create
		@review = Review.new
		@review.rating = params[:review][:rating]
		@review.text = params[:review][:text]
		@review.viewer_id = current_viewer.id
		@review.movie_id = params[:movie_id]
		@review.save
		@movie = Movie.find(params[:movie_id])
		@reviews = Review.where(:movie_id => params[:movie_id])
		@movie.avg_rating = (@reviews.sum("rating") / @reviews.count).round
		@movie.save
		redirect_to "/movies"
	end
end