class RenameMyAdventureLogbooksColumns < ActiveRecord::Migration
  def change
  	rename_column :my_adventure_logbooks, :user_id_id, :user_id
  	rename_column :my_adventure_logbooks, :post_id_id, :post_id

  end
end
