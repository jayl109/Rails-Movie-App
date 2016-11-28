class ViewersController < ApplicationController
	before_filter :authenticate_viewer!
	def index
	end

	def show
		current_viewer.add_role :critic
		redirect_to '/'
	end
	
end