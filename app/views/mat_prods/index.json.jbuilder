json.array!(@mat_prods) do |mat_prod|
  json.extract! mat_prod, :id, :cantidad, :material_id, :product_id
  json.url mat_prod_url(mat_prod, format: :json)
end
