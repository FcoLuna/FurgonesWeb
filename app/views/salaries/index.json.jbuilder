json.array!(@salaries) do |salary|
  json.extract! salary, :id
  json.url salary_url(salary, format: :json)
end
