class MopddReportsController < InheritedResources::Base

  private

    def mopdd_report_params
      params.require(:mopdd_report).permit(:periode, :malaria_confirmed, :malaria_confirmed_notified, :malaria_index_investigated)
    end
end

