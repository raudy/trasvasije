json.array!(@details) do |detail|
  json.extract! detail, :id, :cantidad, :hh, :product_id, :invoice_id
  json.url detail_url(detail, format: :json)
end
