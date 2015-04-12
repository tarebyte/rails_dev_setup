class Rider < ActiveRecord::Base
	has_many :emergency_contacts
	has_one :pel_profile
	has_one :cycling_prof
	belongs_to :ride
	belongs_to :peloton
end
