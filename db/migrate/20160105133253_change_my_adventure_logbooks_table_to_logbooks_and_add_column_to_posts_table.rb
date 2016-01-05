class ChangeMyAdventureLogbooksTableToLogbooksAndAddColumnToPostsTable < ActiveRecord::Migration
  def change
  	rename_table :my_adventure_logbooks, :logbooks
  	add_column :posts, :logbook_id, :integer
  end
end
