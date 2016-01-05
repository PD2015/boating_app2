class RenameMyAdventureLogbooktoMyAdventureLogbooks < ActiveRecord::Migration
  def change
  	rename_table :my_adventure_logbook, :my_adventure_logbooks
  end
end
