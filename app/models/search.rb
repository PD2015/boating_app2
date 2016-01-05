class Search < ActiveRecord::Base

	def search_boats 
		boats = Boat.all
		boats = boats.where(["make LIKE ? and manufacturing_no LIKE ?", make, manufacturing_no]) if manufacturing_no.present?		
		
		return boats
	end
end

#need to change search method so will only find if exactly correct not like.