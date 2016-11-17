class CriticsController < ApplicationController
	def index
		@critics = Critic.all
	end
end