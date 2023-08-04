json.extract! tenant, :id, :first_name, :last_name, :apartment_no, :phone, :email, :created_at, :updated_at
json.url tenant_url(tenant, format: :json)
