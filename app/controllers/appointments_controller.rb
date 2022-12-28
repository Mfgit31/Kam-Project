class AppointmentsController < ApplicationController

    def index
        render json: Appointment.all, status: :ok
    end

    def show
        found_appointment = Appointment.find_by_id(params[:id])

        if found_appointment
            #sending text response back to viewer
            render json: found_appointment
        else
            render json: { "error": "Appointment not found" }, status: :not_found
        end
    end

    def create 
        new_appointment = Appointment.create!(new_appointment_params) 
        
        if new_appointment.valid?
            render json: new_appointment
        else
            render json: {
                "errors": new_appointment.errors.full_messages
            }, status: :unprocessable_entity
        end
    end

    private 
    # all methods below here are private
    #strong params

    def new_appointment_params
        #implicit return with attributes
        params.permit(:customer_id, :housing_id, :date, :time)
    end
end
