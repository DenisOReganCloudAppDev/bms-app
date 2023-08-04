json.extract! manager, :id, :first_name, :last_name, :phone, :email, :building_id, :created_at, :updated_at
json.url manager_url(manager, format: :json)
