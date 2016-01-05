class RenameBoatBlogsTableToPosts < ActiveRecord::Migration
  def change
  	rename_table :boat_blogs, :posts
  end
end
