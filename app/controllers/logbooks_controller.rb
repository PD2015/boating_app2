class LogbooksController < ApplicationController
	before_filter :authenticate_user!

	def index #now not in use
		@logbook = Logbook.all
	end

	def show
		@logbook = Logbook.find(params[:id])
	end


	private
		def logbook_params
	      params.require(:logbook).permit(:user_id, :post_id)
	    end



end