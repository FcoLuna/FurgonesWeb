json.array!(@parents) do |parent|
  json.extract! parent, :id, :nombre, :apellido, :telefono, :rut, :pago, :user_id
  json.url parent_url(parent, format: :json)
end
