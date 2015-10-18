class AddMakeToBikes < ActiveRecord::Migration
  def change
  	add_column :bikes, :make, :string
  end
end
