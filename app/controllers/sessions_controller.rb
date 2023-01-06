class SessionsController < ApplicationController
    skip_before_action :authorized_customer, only: [:create]
    def create                       #username
        customer = Customer.find_by(username:params[:username])
    
        if customer&.authenticate(params[:password])
            #new code
            session[:customer_id] = customer.id #log user in, keep track of user
            #setting customer to sessions
            render json: customer, status: :ok
        else
            render json: {errors: 'Invalid Password or Username'}, status: :unauthorized
        end
    end

    def destroy
        session.delete :customer_id
        head :no_content
    end
end


# def create
#     customer = Customer.find_by(username: params[:username])
#     session[:customer_id] = customer.id
#     render json: customer
# end