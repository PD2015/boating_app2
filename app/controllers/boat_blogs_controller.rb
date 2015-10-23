class BoatBlogsController < ApplicationController
	# NEED TO MAKE THIS USER SPECIFIC AND AUTHENTICATED
	before_filter :authenticate_user!

   def index
   	@boat_blogs = BoatBlog.where(:user_id => current_user.id)
   	 	#@boat_blog = current_user.boat_blogs
   		#@user = User.find(params[:id])
   		#@boat_blog = current_user.Boat_blog.find(params[:id])
   		#@boat_blog =Boat_blog.all
  		#@boat_blog = current_user.boat_blogs.find(params[:user_id])
  	end

  def new
  	# @boat_blog = current_user.boat_blog.new
  end

  def create
  	@boat_blog = current_user.boat_blogs.build(boat_blog_params)
   if @boat_blog.save
   flash[:success] = "New boat added!"
   redirect_to user_boat_blogs_path(current_user)
   else
   	render 'static_pages/home'
    end	
  end

  private

   def boat_blog_params
   	params.require(:boat_blog).permit(:date, :location, :post)  	
   end
end
