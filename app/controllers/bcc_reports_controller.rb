class BccReportsController < InheritedResources::Base

  private

    def bcc_report_params
      params.require(:bcc_report).permit(:sensitization_date, :Venue, :male_fp_rh, :female_fp_rh, :male_mnh, :female_mnh, :male_malaria, :female_malaria, :references)
    end
end

