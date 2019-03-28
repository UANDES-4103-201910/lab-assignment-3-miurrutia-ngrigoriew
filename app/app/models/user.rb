class User < ApplicationRecord
	has_many :ticket_type
	#has_many :ticket_order
end
