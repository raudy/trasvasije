json.array!(@categories) do |category|
  json.extract! category, :id, :codigo, :nombre
  json.url category_url(category, format: :json)
end
