class CriticsController < ApplicationController
	def index
		@critics = Critic.all
	end

	def show
		@critic = Critic.find(params[:id])
	end
end