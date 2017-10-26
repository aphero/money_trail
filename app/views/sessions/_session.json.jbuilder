json.extract! session, :id, :user_id, :location_id, :start_time, :end_time, :created_at, :updated_at
json.url session_url(session, format: :json)
