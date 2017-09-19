class AddMemberNumberToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :member_number, :integer
  end
end
