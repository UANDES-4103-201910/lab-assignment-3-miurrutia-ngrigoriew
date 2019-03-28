class AddEventVenueRefToEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :event, foreign_key: true
  end
end
