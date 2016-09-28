json.array!(@salaries) do |salary|
  json.extract! salary, :id, :monto, :mes, :worker_id
  json.url salary_url(salary, format: :json)
end
