class BoatsController < ApplicationController
	before_filter :authenticate_user!

	def index
 
	end

	def new
		@boat = current_user.boats.new
	end
  
	def create
		@user = User.find(params[:user_id])
		@boat = @user.boats.create(boat_params)
	    if @boat.save
	      flash[:success] = "New boat added!"
	      redirect_to user_path(current_user)
	    else
	      render 'static_pages/home' #this needs to be changed so that error are thrown if validation not met.
	    end
	end

	def destroy
		
	end

	def boat_search
		@boat_search = Boat.find_boat(params[:manufacturing_no])
	end

	private

    def boat_params
      params.require(:boat).permit(:make, :name, :manufacturing_no)
    end

    
 

end
