json.array!(@spedings) do |speding|
  json.extract! speding, :id
  json.url speding_url(speding, format: :json)
end
