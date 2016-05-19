ActiveAdmin.register Facility do
  # active_admin_importable
  permit_params :name

  # menu false
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  show :title => :facility_name do
    
    panel "Delivery data for #{facility.name}" do
      table_for facility.family_planning_reports do |t|
        t.column("Report") { |report| link_to report.name,  admin_family_planning_report_path(report) }
        t.column("Women Counseled on breastfeeding after delivery") { |delivery| delivery.delivery_1}
        t.column("Number of women who received Oxytocin immediately after delivery") { |delivery| delivery.delivery_2}
      end
    end
  end

end
