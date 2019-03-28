class AddUserRefToTicketType < ActiveRecord::Migration[5.2]
  def change
    add_reference :ticket_types, :user, :reference 
  end
end
