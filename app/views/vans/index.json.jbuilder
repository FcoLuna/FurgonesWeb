json.array!(@vans) do |van|
  json.extract! van, :id, :patente, :capacidad, :estado, :kilimetrage
  json.url van_url(van, format: :json)
end
