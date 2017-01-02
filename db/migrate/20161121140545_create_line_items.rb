class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :quantity
      t.float :price

      t.timestamps null: false
    end
  end
end
