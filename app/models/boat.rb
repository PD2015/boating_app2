class Boat < ActiveRecord::Base
	belongs_to :user, dependent: :destroy
	validates :manufacturing_no, presence: true,
                    length: { minimum: 5 }


end
