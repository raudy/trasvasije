json.array!(@materials) do |material|
  json.extract! material, :id, :codigo, :nombre
  json.url material_url(material, format: :json)
end
