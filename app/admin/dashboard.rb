ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent Forms Filled" do
          ol do
            Managedform.last(20).map do |managedform|
              li link_to(managedform.full_name, admin_managedform_path(managedform))
              div managedform.net_worth
            end
          end
        end
      end

      column do
        panel "Recent Appointments" do
          ol do
            Appointment.last(20).map do |appointment|
              li link_to(appointment.full_name, admin_appointment_path(appointment))
            end
          end
        end
      end
    end
  end # content
end
