json.array!(@pays) do |pay|
  json.extract! pay, :id, :mes, :fecha, :apoderado_id, :monto
  json.url pay_url(pay, format: :json)
end
