class TOrder < ApplicationRecord
	has_one :user
	has_many :types
end
