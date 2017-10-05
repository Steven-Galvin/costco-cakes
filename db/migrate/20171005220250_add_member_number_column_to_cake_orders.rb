class AddMemberNumberColumnToCakeOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :cake_orders, :member_phone_number, :string
  end
end
