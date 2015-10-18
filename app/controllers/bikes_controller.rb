class BikesController < ApplicationController
	
	def index
	end

	def new
		@bike = current_user.bikes.new
	end
  
	def create
			@bike = current_user.bikes.build(bike_params)
    if @bike.save
      flash[:success] = "New bike added!"
      redirect_to user_path(current_user)
    else
      render 'static_pages/home'
    end
		
	end

	def destroy
		
	end

	private

    def bike_params
      params.require(:bike).permit(:name, :manufacturing_no)
    end
end
