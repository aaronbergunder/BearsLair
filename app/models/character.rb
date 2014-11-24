class Character < ActiveRecord::Base
	has_one :statussheet
	has_one :skillsheet 
	has_one :spellsheet

	after_create :create_statussheet
	after_create :create_skillsheet
	after_create :create_spellsheet
end
