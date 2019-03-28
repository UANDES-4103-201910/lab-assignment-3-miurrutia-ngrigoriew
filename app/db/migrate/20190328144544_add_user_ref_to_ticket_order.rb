class AddUserRefToTicketOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :ticket_orders, :user, foreign_key: true
  end
end
