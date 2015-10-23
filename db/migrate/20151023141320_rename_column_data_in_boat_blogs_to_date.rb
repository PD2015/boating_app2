class RenameColumnDataInBoatBlogsToDate < ActiveRecord::Migration
  def change
  	rename_column :boat_blogs, :data, :date
  end
end
