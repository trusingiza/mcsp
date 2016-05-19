class FacilitiesController < InheritedResources::Base
  
  private

    def facility_params
      params.require(:facility).permit(:fosa_code, :facility_name, :location_id)
    end
end

