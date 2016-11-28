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
		@movie = Movie.find(params[:movie_id])
		@movie.update_attribute(:avg_rating, compute_avg_rating_path(:movie_id))
		@review.save
		redirect_to "/movies"
	end
end