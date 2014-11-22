class Character < ActiveRecord::Base
  has_one :infosheet, dependent: :destroy
end
