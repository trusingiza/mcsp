class DistrictHospitalsController < InheritedResources::Base

  private

    def district_hospital_params
      params.require(:district_hospital).permit(:name, :references)
    end
end

