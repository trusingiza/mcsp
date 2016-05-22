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
      
h3 { 'Training Reports'}

    columns do
      column do
        panel "Child Health and Nutrition" do
          columns do
            column do
             span "Qualification"
            end
            column do
             span "Male"
            end
            column do
             span "Female"
            end
          end
        #Next columns
        columns do
            column do
              span "Doctors"
            end
            column do
              span "#{Training.chn_doc_male}"#Method in Training model
            end
            column do
             span "#{Training.chn_doc_female}"
            end
          end 

          columns do
            column do
              span "Nurses"
            end
            column do
              span "#{Training.chn_nurse_male}"
            end
            column do
             span "#{Training.chn_nurse_female}"
            end
          end
          

          columns do
            column do
              span "Midwives"
            end
            column do
              span "#{Training.chn_Midwife_male}"
            end
            column do
             span "#{Training.chn_Midwife_female}"
            end
          end
          
          columns do
            column do
              span "CHWs"
            end
            column do
              span "#{Training.chn_chw_male}"
            end
            column do
             span "#{Training.chn_chw_female}"
            end
          end
          
          columns do
            column do
              span "Community Health Volunteers"
            end
            column do
              span "#{Training.chn_chvol_male}"
            end
            column do
              span "#{Training.chn_chvol_female}"
            end
          end
          
          columns do
            column do
              span "Non-health Personnel"
            end
            column do
              span "#{Training.chn_nohp_male}"
            end
            column do
              span "#{Training.chn_nohp_female}"
            end
          end         
        end
      end
      column do
        panel "Immunization" do
          columns do
            column do
             span "Qualification"
            end
            column do
             span "Male"
            end
            column do
             span "Female"
            end
          end
        #Next columns
        columns do
            column do
              span "Doctors"
            end
            column do
              span "#{Training.imm_doc_male}"#Method in Training model
            end
            column do
             span "#{Training.imm_doc_female}"
            end
          end 

          columns do
            column do
              span "Nurses"
            end
            column do
              span "#{Training.imm_nurse_male}"
            end
            column do
             span "#{Training.imm_nurse_female}"
            end
          end
          

          columns do
            column do
              span "Midwives"
            end
            column do
              span "#{Training.imm_Midwife_male}"
            end
            column do
             span "#{Training.imm_Midwife_female}"
            end
          end
          
          columns do
            column do
              span "CHWs"
            end
            column do
              span "#{Training.imm_chw_male}"
            end
            column do
             span "#{Training.imm_chw_female}"
            end
          end
          
          columns do
            column do
              span "Community Health Volunteers"
            end
            column do
              span "#{Training.imm_chvol_male}"
            end
            column do
              span "#{Training.imm_chvol_female}"
            end
          end
          
          columns do
            column do
              span "Non-health Personnel"
            end
            column do
              span "#{Training.imm_nohp_male}"
            end
            column do
              span "#{Training.imm_nohp_female}"
            end
          end         
        end
      end
      column do
        panel "Family Planning / Reproductive Health" do
          columns do
            column do
              "Qualification"
            end
            column do
              "Male"
            end
            column do
              "Female"
            end
          end
        #Next columns
        columns do
            column do
              span "Doctors"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end 

          columns do
            column do
              span "Nurses"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          

          columns do
            column do
              span "Midwives"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "CHWs"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Community Health Volunteers"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Non-health Personnel"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end         
        end
      end

    end
#END OF FIRST ROW
columns do
      column do
        panel "Malaria" do
          columns do
            column do
              "Qualification"
            end
            column do
              "Male"
            end
            column do
              "Female"
            end
          end
        #Next columns
        columns do
            column do
              span "Doctors"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end 

          columns do
            column do
              span "Nurses"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          

          columns do
            column do
              span "Midwives"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "CHWs"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Community Health Volunteers"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Non-health Personnel"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end         
        end
      end
      column do
        panel "Maternal" do
          columns do
            column do
              "Qualification"
            end
            column do
              "Male"
            end
            column do
              "Female"
            end
          end
        #Next columns
        columns do
            column do
              span "Doctors"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end 

          columns do
            column do
              span "Nurses"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          

          columns do
            column do
              span "Midwives"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Community Health Workers"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Community Health Volunteers"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Non-health Personnel"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end         
        end
      end
      column do
        panel "Newborn" do
          columns do
            column do
              "Qualification"
            end
            column do
              "Male"
            end
            column do
              "Female"
            end
          end
        #Next columns
        columns do
            column do
              span "Doctors"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end 

          columns do
            column do
              span "Nurses"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          

          columns do
            column do
              span "Midwives"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "CHWs"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Community Health Volunteers"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Non-health Personnel"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end         
        end
      end

    end
    #END SECOND ROW
    columns do
      column do
        panel "HIV/AIDS" do
          columns do
            column do
              "Qualification"
            end
            column do
              "Male"
            end
            column do
              "Female"
            end
          end
        #Next columns
        columns do
            column do
              span "Doctors"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end 

          columns do
            column do
              span "Nurses"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          

          columns do
            column do
              span "Midwives"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "CHWs"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Community Health Volunteers"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Non-health Personnel"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end         
        end
      end
      column do
        panel "WASH" do
          columns do
            column do
              "Qualification"
            end
            column do
              "Male"
            end
            column do
              "Female"
            end
          end
        #Next columns
        columns do
            column do
              span "Doctors"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end 

          columns do
            column do
              span "Nurses"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          

          columns do
            column do
              span "Midwives"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Community Health Workers"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Community Health Volunteers"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Non-health Personnel"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end         
        end
      end
      column do
        panel "M&E" do
          columns do
            column do
              "Qualification"
            end
            column do
              "Male"
            end
            column do
              "Female"
            end
          end
        #Next columns
        columns do
            column do
              span "Doctors"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end 

          columns do
            column do
              span "Nurses"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          

          columns do
            column do
              span "Midwives"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "CHWs"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Community Health Volunteers"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Non-health Personnel"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end         
        end
      end

    end
    #END THIRD ROW
    columns do
      column do
        panel "Other" do
          columns do
            column do
              "Qualification"
            end
            column do
              "Male"
            end
            column do
              "Female"
            end
          end
        #Next columns
        columns do
            column do
              span "Doctors"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end 

          columns do
            column do
              span "Nurses"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          

          columns do
            column do
              span "Midwives"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "CHWs"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Community Health Volunteers"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end
          
          columns do
            column do
              span "Non-health Personnel"
            end
            column do
              span "#{Facility.sum_test}"
            end
            column do
             span "#{Facility.sum_test}"
            end
          end         
        end
      end
    end

  end
end

      
