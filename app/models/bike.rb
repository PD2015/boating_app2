class Bike < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  validates :user_id, presence: true
  validates :manufacturing_no, presence: true, length: { maximum: 10 }
end
