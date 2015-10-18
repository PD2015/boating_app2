class AddMakeToBoats < ActiveRecord::Migration
  def change
  	add_column :boats, :make, :string
  end
end
