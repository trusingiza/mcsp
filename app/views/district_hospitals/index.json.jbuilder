json.array!(@district_hospitals) do |district_hospital|
  json.extract! district_hospital, :id, :name, :references
  json.url district_hospital_url(district_hospital, format: :json)
end
