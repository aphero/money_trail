json.extract! shopping_list, :id, :user_id, :total, :store_id, :created_at, :updated_at
json.url shopping_list_url(shopping_list, format: :json)
