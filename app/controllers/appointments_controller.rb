class AppointmentsController < ApplicationController
    def new
        @appointment = Appointment.new
    end
    def create
        @appointment = Appointment.new(appointment_params)
        if !verify_recaptcha(model: @appointment) || !@appointment.save
            render 'new'
        elsif @appointment.save
            flash[:notice] = "Thank you for your interest, we will follow up with you shortly!"
            redirect_to root_path
        end
    end

    private
    def appointment_params
        params.require(:appointment).permit(:full_name, :phone, :email, :date1, :date2, :date3, :addtninfo)        
    end
end
