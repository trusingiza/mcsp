class SiscomReportsController < InheritedResources::Base

  private

    def siscom_report_params
      params.require(:siscom_report).permit(:Periode, :Diarrhea2_59months, :Pneumonia2_59months, :Accouchement_domicile, :Micropostal, :Active_CHWs, :Total_CHWs, :Total_red_alert, :Responce_red_alert, :RDT_positive, :RDT_negative, :Malaria_6_59months_treated_before_24h, :Malaria_6_59months_treated_after_24h)
    end
end

