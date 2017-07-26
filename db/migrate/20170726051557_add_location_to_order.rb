class AddLocationToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :cake_orders, :location, :string
  end
end
