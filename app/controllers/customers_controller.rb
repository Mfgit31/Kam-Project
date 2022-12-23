class CustomersController < ApplicationController

    def index
        render json: Customer.all, status: :ok
    end

    def show
        render json: show_customer = Customer.find_by_id(params[:id])
    end

    def create 
        render json: new_customer = Customer.create!(new_customer_params)
    end

    private 

    def new_customer_params
        params.permit(:name, :address, :email, :phone, :age)
    end
end




