class SearchesController < ApplicationController
  #currently set up for searching Boats.
  
  def show
    @search = Search.find(params[:id])
  end

  def new
  	@search = Search.new
  	@make = Boat.uniq.pluck(:make)
  end

  def create
  	@search = Search.create(search_params)
  	redirect_to @search
  end

  


  	private

  	def search_params
  		params.require(:search).permit(:make, :manufacturing_no)  		
  	end
end
