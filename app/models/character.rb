class Character < ActiveRecord::Base
	has_one :statussheet
	has_one :skillsheet 
  has_many :spells

	after_create :create_statussheet
	after_create :create_skillsheet
end
