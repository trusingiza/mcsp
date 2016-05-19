json.array!(@districts) do |district|
  json.extract! district, :id, :name, :references
  json.url district_url(district, format: :json)
end
