  <%=render "partials/navigation"%>
json.array!(@parents) do |parent|
  json.extract! parent, :id, :nombre, :apellido, :telefono, :rut, :pago
  json.url parent_url(parent, format: :json)
end
