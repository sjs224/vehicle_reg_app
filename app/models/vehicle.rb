class Vehicle < ActiveRecord::Base
	belongs_to :user
	  validates :user_id, presence: true
	  validates :licence_plate, presence: true, length: {maximum: 10}, uniqueness: { case_sensitive: false }
	  validates :make, presence: true
	  validates :year, length: { maximum:4 }
end
