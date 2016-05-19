json.array!(@facilities) do |facility|
  json.extract! facility, :id, :fosa_code, :facility_name, :location_id
  json.url facility_url(facility, format: :json)
end
