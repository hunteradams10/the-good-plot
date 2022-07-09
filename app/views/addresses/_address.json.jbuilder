json.extract! address, :id, :first_name, :last_name, :unit_number, :street_number, :street_name, :suburb, :state, :post_code, :country, :phone, :user_id, :created_at, :updated_at
json.url address_url(address, format: :json)
