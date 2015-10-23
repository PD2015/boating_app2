class CreateBoatBlogs < ActiveRecord::Migration
  def change
    create_table :boat_blogs do |t|
      t.date :data
      t.string :location
      t.text :post
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
