class CriticsController < ApplicationController
	def index
		@critics = Critic.all
	end
	def subscribe
		m = Critic.find(params[:id])
		current_viewer.critics<<m
		redirect_to "/critics"
		end
	def unsubscribe
		m = Critic.find(params[:id])
		current_viewer.critics.delete(m)
		redirect_to "/critics"
		end
	def show
		@critic = Critic.find(params[:id])
		@reviews = Review.all
	end
end