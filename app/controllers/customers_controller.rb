class CustomersController < ApplicationController

    def index
        render json: Customer.all, status: :ok
    end

    def show
        found_customer = Customer.find_by_id(params[:id])

        if found_customer
            #sending text response back to viewer
            render json: found_customer, serializer: CustomerShowSerializer
        else
            render json: { "error": "Customer not found" }, status: :not_found
        end
    end

    def create 
        new_customer = Customer.new(new_customer_params)
        
        if new_customer.save
            render json: new_customer
        else
            render json: {
                "errors": new_customer.errors.full_messages
            }, status: :unprocessable_entity
        end

    end

    private 

    def new_customer_params
        params.permit(:name, :address, :email, :phone, :age)
    end
end




