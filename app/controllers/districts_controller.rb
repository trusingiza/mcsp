class DistrictsController < InheritedResources::Base

  private

    def district_params
      params.require(:district).permit(:name, :references)
    end
end

