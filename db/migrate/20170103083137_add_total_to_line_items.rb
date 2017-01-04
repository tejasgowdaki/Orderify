class AddTotalToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :total, :float
  end
end
