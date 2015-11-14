json.array!(@schools) do |school|
  json.extract! school, :id, :nombre, :telefono, :direccion, :comuna
  json.url school_url(school, format: :json)
end
