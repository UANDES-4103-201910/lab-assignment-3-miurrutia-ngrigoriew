class AddEventRefToTicketType < ActiveRecord::Migration[5.2]
  def change
    add_reference :ticket_types, :event, foreign_key: true
  end
end
