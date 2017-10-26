json.extract! line_item, :id, :receipt_id, :product_id, :on_sale, :list_price, :sale_price, :created_at, :updated_at
json.url line_item_url(line_item, format: :json)
