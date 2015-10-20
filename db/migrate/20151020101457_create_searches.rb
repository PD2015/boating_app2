class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :make
      t.string :manufacturing_no

      t.timestamps null: false
    end
  end
end
