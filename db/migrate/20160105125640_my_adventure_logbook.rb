class MyAdventureLogbook < ActiveRecord::Migration
  def change
  	create_table :my_adventure_logbook do |t|
      t.belongs_to :user_id, index: true
      t.belongs_to :post_id, index: true
      t.timestamps null: false
    end
  end
end
