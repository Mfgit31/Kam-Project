class AppointmentsController < ApplicationController

    def index
        render json: Appointment.all, status: :ok
    end

    def show
        render json: show_appointment = Appointment.find_by_id(params[:id])
    end

    def create 
        render json: new_appointment = Appointment.create!(new_appointment_params)
    end

    private 

    def new_appointment_params
        params.permit(:housing_id, :customer_id, :date, :time)
    end
end
