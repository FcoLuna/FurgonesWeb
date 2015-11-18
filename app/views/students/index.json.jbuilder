json.array!(@students) do |student|
  json.extract! student, :id, :nombre, :apellido, :rut, :jornada, :direccion, :comuna, :parent_id, :school_id, :van_id
  json.url student_url(student, format: :json)
end
