json.extract! order_line_item, :id, :order_id, :product_id, :price, :quantity, :created_at, :updated_at
json.url order_line_item_url(order_line_item, format: :json)