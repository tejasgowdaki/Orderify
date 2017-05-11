class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  has_many :order_line_items

  after_create :move_line_items

  def move_line_items
    line_items = user.line_items
    sum = 0
    line_items.each do |line_item|
      oli = OrderLineItem.new
      oli.order_id = id
      oli.product_id = line_item.product_id
      oli.quantity = line_item.quantity
      oli.price = line_item.price
      oli.save
      sum += oli.quantity * oli.price
    end

    update_attributes(total: sum)
    user.line_items.delete_all
  end
end
