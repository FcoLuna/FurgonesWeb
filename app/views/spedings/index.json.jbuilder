json.array!(@spedings) do |speding|
  json.extract! speding, :id, :nombre, :monto, :van_id
  json.url speding_url(speding, format: :json)
end
