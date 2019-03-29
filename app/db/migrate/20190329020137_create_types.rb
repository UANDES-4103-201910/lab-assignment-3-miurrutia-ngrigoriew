class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|
      t.integer :event
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
