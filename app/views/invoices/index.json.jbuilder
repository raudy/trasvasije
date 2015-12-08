json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :codigo, :fecha, :neto, :bruto, :customer_id
  json.url invoice_url(invoice, format: :json)
end
