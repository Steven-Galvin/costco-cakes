class CreateCakeDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :cake_designs do |t|
      t.string :name
      t.attachment :image
      t.string :option

      t.timestamps
    end
  end
end
