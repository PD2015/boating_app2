class BoatsController < ApplicationController
	before_filter :authenticate_user!

	def index
 
	end

	def new
		@boat = current_user.boats.new
	end
  
	def create
		@boat = current_user.boats.build(boat_params)
    if @boat.save
      flash[:success] = "New boat added!"
      redirect_to user_path(current_user)
    else
      render 'static_pages/home'
    end
		
	end

	def destroy
		
	end

	private

    def boat_params
      params.require(:boat).permit(:make, :name, :manufacturing_no)
    end

    
 

end
