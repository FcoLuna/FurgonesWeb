json.array!(@workers) do |worker|
  json.extract! worker, :id, :nombre, :apellido, :rut, :tipo_trabajador, :sueldo, :van_id
  json.url worker_url(worker, format: :json)
end
