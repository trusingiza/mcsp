class FamilyPlanningReportsController < InheritedResources::Base

  private

    def family_planning_report_params
      params.require(:family_planning_report).permit(:report_period, :delivery_1, :delivery_2, :neonantology_male, :neonantology_female, :anc_oral_contraceptive, :anc_injectable, :anc_implants, :anc_iud, :anc_male_condom, :anc_female_condom, :anc_barriers, :anc_cycle_beads, :anc_auto_observation, :anc_tubal_ligation, :anc_vasectomy, :acceptors_1, :acceptors_2, :acceptors_oral_contraceptive, :acceptors_injectable, :acceptors_implants, :acceptors_iud, :acceptors_male_condom, :acceptors_female, :condom, :acceptors_other_barriers, :acceptors_cycle_beads, :acceptors_auto_observation, :acceptors_tubal_ligation, :acceptors_vasectomy, :references)
    end
end

