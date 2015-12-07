json.array!(@customers) do |customer|
  json.extract! customer, :id, :rut, :nombre, :direccion, :fono
  json.url customer_url(customer, format: :json)
end
