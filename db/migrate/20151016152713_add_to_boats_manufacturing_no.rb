class AddToBoatsManufacturingNo < ActiveRecord::Migration
  def change
  	add_column :boats, :manufacturing_no, :string
  end
end
