class Character < ActiveRecord::Base
	has_one :statussheet
	has_one :skillsheet  
end
