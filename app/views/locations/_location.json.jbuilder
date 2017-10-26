json.extract! location, :id, :address1, :address2, :city, :state, :country, :postal_code, :longitude, :latitude, :ip_address, :created_at, :updated_at
json.url location_url(location, format: :json)
