class TrainingsController < InheritedResources::Base

  private

    def training_params
      params.require(:training).permit(:location, :organizer, :startdate, :enddate, :name_surname, :gender, :provenance_district, :place_of_work, :position, :qualification, :telephone, :email, :duration_days, :type_name_of_training, :pre_test, :post_test, :date_of_post_training_follow_up, :technical_area)
    end
end

