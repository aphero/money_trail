json.extract! receipt, :id, :datetime, :store_id, :payment_method, :order_number, :total, :currency, :created_at, :updated_at
json.url receipt_url(receipt, format: :json)
