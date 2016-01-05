class DropMyBoatBlog < ActiveRecord::Migration
  def change
  	drop_table :my_boat_blogs
  end
end
