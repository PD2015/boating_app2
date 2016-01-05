class PostsController < ApplicationController
	# NEED TO MAKE THIS USER SPECIFIC AND AUTHENTICATED
	before_filter :authenticate_user!

   def index
   	#@boat_blogs = BoatBlog.where(user_id: current_user.id)
   	 	@posts = current_user.posts
      #or
      #@user = User.find(params[:user_id])
      #@boat_blogs = @user.boat_blogs
   	
  	end
  def new
    # @logbook = Logbook.find(params[:logbook_id])
  	 # @post = logbook.posts.new
  end

  def create
    @logbook = Logbook.find(params[:logbook_id])
  	@post = @logbook.posts.build(post_params)
   if @post.save
   flash[:success] = "New post added!"
   redirect_to logbook_path(current_user.logbook.id)
   else
   	render 'static_pages/home'
    end	
  end

  private

   def post_params
   	params.require(:post).permit(:date, :location, :post)  	
   end
end
