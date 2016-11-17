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
	end

	def create
		@review = Review.new
		@review.rating = params[:review][:rating]
		@review.text = params[:review][:text]
		@review.save
		redirect_to "/reviews/index"
	end
end