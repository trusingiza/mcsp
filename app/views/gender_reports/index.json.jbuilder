json.array!(@gender_reports) do |gender_report|
  json.extract! gender_report, :id, :meeting_date, :meeting_venue, :hf_targeted, :hf_participated, :admin_sector_targeted, :admin_sector_participated, :admin_cell_targeted, :admin_cell_participated, :male_10_14, :female_10_14, :male_15_19, :female_15_19, :male_20_24, :female_20_24, :male_25_29, :female_25_29, :male_30_49, :female_30_49, :male_50_above, :female_50_above, :references
  json.url gender_report_url(gender_report, format: :json)
end
