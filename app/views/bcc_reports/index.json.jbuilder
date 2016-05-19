json.array!(@bcc_reports) do |bcc_report|
  json.extract! bcc_report, :id, :sensitization_date, :Venue, :male_fp_rh, :female_fp_rh, :male_mnh, :female_mnh, :male_malaria, :female_malaria, :references
  json.url bcc_report_url(bcc_report, format: :json)
end
