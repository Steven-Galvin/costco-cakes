class FixTypo < ActiveRecord::Migration[5.1]
  def change
    remove_column :cake_orders, :mouse_flavor, :string
    add_column :cake_orders, :mousse_flavor, :string
  end
end
