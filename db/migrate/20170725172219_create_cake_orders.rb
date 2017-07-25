class CreateCakeOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :cake_orders do |t|
      # Relationships
      t.integer :user_id
      t.integer :cake_design_id

      # Properties
      t.string :cake_flavor
      t.string :mouse_flavor
      t.string :icing_flavor
      t.string :writing
      t.date :pick_up_date
      t.time :pick_up_time
      t.string :option
      t.attachment :photo
      t.string :additional_comments

      # Optional Properties for Guest
      t.string :member_name
      t.string :member_number

      t.timestamps
    end
  end
end
