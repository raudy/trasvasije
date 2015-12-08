json.array!(@deliveries) do |delivery|
  json.extract! delivery, :id, :cantidad, :fecha, :customer_id, :material_id
  json.url delivery_url(delivery, format: :json)
end
