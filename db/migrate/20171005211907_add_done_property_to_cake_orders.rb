class AddDonePropertyToCakeOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :cake_orders, :done, :boolean, default: false
  end
end
