class CreateTOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :t_orders do |t|
      t.integer :total
      t.integer :user_id
      t.integer :ticket_id

      t.timestamps
    end
  end
end
