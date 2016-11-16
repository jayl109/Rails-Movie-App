class ReviewsController < ApplicationController
	def index
		@reviews = Review.all
	end

	def delete
		@review = Review.find(params[:id])
		@review.destroy
	end
end