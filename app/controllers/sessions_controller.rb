class SessionsController < ApplicationController

    def create
        customer = Customer.find_by(username: params[:username])
        session[:customer_id] = customer.id
        render json: customer
    end
    
    def destroy
        session.delete :customer_id
        head :no_content
    end

    def login 
        byebug
        customer = Customer.find_by(name:params[:name])
        byebug
        if customer&.authenticate(params[:password])
            byebug
            #setting customer to sessions
            render json: customer, status: :ok
        else
            render json: {errors: 'Invalid Password or Username'}, status: :unauthorized
        end
    end
end
