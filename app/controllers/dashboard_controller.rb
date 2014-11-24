class DashboardController < ApplicationController
	before_filter :authenticate_user!

	def index
		
	end

	def show
		redirect_to(:action => 'index')
	end

end
