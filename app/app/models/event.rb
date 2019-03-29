class Event < ApplicationRecord
	has_many :ticket_types
	belongs_to :venue 
end
