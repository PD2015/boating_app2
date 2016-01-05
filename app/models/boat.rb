class Boat < ActiveRecord::Base
	belongs_to :user, dependent: :destroy
	validates :manufacturing_no, presence: true,
                    length: { minimum: 5 }



#Search method with ogs here:)
	def self.find_boat(search_item)
		find_by_manufacturing_no(search_item)
	end

end
