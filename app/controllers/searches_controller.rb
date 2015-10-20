class SearchesController < ApplicationController
  def new
  	@search = Search.new
  	@make = Boat.uniq.pluck(:make)
  end

  def create
  	@search = Search.create(search_params)
  	redirec_to @search
  end

  def show
  	@search = Search.find(params[:id])
  end


  	private

  	def search_params
  		params.require(:boat).permit(:make, :manufacturing_no)  		
  	end
end