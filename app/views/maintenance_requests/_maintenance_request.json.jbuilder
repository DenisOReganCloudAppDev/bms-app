json.extract! maintenance_request, :id, :tenant_id, :requestinfo, :requestDate, :completed, :comment, :created_at, :updated_at
json.url maintenance_request_url(maintenance_request, format: :json)
