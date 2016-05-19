ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
  #   div class: "blank_slate_container", id: "dashboard_default_message" do
  #     span class: "blank_slate" do
  #       span I18n.t("active_admin.dashboard_welcome.welcome")
  #       small I18n.t("active_admin.dashboard_welcome.call_to_action")
  #     end
  #   end

  ########################Start Columns###############################
    # columns do

    #   column do
    #     panel 'Recent FP Reports' do
    #       ul do
    #         FamilyPlanningReport.recent(10).collect do |report|
    #           li link_to(report.name, admin_family_planning_report_path(report))
    #         end
    #       end
    #       strong { link_to 'View all FP Reports', admin_family_planning_reports_path }
    #     end
    #   end
    # end
    #   column do
    #     panel 'Recent FP Reports' do
    #       ol do
    #         FamilyPlanningReport.recent(10).collect do |report|
    #           li link_to(report.name, admin_family_planning_report_path(report))
    #         end
    #       end
    #       strong { link_to 'View all FP Reports', admin_family_planning_reports_path }
    #     end
    #   end

    #   column do
    #     panel "Reports by FOSA" do
    #       table_for Facility.order('id desc').each do |fosa|
    #         column(:facility_name)    {|fosa| link_to(fosa.name, admin_facility_path(fosa)) }
    #       end
    #     end
    #   end
    #   # column do
    #   #   panel "Recent FP Reports" do
    #   #     table_for FamilyPlanningReport.order('id desc').limit(10).each do |report|
    #   #       column(:email)    {|customer| link_to(customer.email, admin_customer_path(customer)) }
    #   #     end
    #   #   end
    #   # end

    #   # column do
    #   #   panel 'Recent FP Reports' do
    #   #     table_for FamilyPlanningReport.recent(10).collect do |report|
    #   #         li link_to(report.name, admin_family_planning_report_path(report))
    #   #       end
    #   #     end
    #   #     strong { link_to 'View all FP Reports', admin_family_planning_reports_path }
    #   #   end
    # end
    # #####################END COLUMNS#############################


    columns do
      column do
        panel "Indicator: Sum_test" do
          para strong "Sum_test: "+"#{Facility.sum_test}"
        end
      end
      column do
        panel "Family Planning Indicators" do
          ol do
            para strong "Sum_test: "+"#{Facility.sum_test}"
            para strong "Another: "+"#{Facility.sum_test}"
            para strong "Gender: "+"#{DistrictHospital.sup_test}"

          end
        end
      end
      column do
        panel "Indicator: Sum_test" do
          para strong "#{Facility.sum_test}"
        end
      end
    end
    columns do
      column do
        panel "Results by Indicator: PMP & Custom Indicator Progress" do
          table_for "PMP & Custom Indicator Progress" do |t|
            t.column("#") 
            t.column("USAID Indicator Code") 
            t.column("Indicator Name")
            t.column("Definition") 
            t.column("Data Source") 
            t.column("Baseline")
            t.column("Year Target") 
            t.column("Q1 FY16 Result") {Facility.sum_test} 
            t.column("Q1 FY16 Target")
            t.column("Comments")
          end
        end
      end
    end
  end
end

      
