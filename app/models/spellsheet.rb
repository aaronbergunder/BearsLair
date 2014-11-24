class Spellsheet < ActiveRecord::Base
  belongs_to :character

  has_many :spells
end
