class Event < ApplicationRecord
	has_many :ticket_type
	has_one :event_venue
end
