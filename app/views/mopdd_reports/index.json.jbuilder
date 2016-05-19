json.array!(@mopdd_reports) do |mopdd_report|
  json.extract! mopdd_report, :id, :periode, :malaria_confirmed, :malaria_confirmed_notified, :malaria_index_investigated
  json.url mopdd_report_url(mopdd_report, format: :json)
end
