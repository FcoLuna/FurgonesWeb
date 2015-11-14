json.array!(@stundents) do |stundent|
  json.extract! stundent, :id, :nombre, :apellido, :rut, :jornada, :direccion, :comuna, :parent_id, :van_id, :school_id
  json.url stundent_url(stundent, format: :json)
end
