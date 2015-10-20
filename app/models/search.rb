class Search < ActiveRecord::Base

	def search_boats 
		boats = Boat.all
		boats = boats.where(["make LIKE ? and manufacturing_no LIKE ?", make, manufacturing_no]) if manufacturing_no.present?		
		
		return boats
	end
end
