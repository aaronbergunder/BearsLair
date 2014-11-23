class Character < ActiveRecord::Base
	has_one :statussheet
	has_one :skillsheet  

	after_create :create_statussheet
	after_create :create_skillsheet
end
