json.extract! order, :id, :order_date, :order_no, :user_id, :total, :created_at, :updated_at
json.url order_url(order, format: :json)