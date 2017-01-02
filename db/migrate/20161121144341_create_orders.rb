class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.string :order_no
      t.integer :user_id
      t.float :total

      t.timestamps null: false
    end
  end
end
