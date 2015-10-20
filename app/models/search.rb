class Search < ActiveRecord::Base

	def search_boats 
		boats = Boats.all
		boats = boats.where(["make LIKE ?", make]) if manufacturing_no.present?		
		boats = boats.where(["manufacturing_no LIKE ?", manufacturing_no]) if manufacturing_no.present?

		returns boats
	end
end
