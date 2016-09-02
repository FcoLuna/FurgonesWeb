json.array!(@registries) do |registry|
  json.extract! registry, :id, :nombre, :mensaje, :fecha, :van_id
  json.url registry_url(registry, format: :json)
end
