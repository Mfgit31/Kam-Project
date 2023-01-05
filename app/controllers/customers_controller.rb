class CustomersController < ApplicationController
    #skip_before_action
    skip_before_action :authorized_customer, only: [:create]

    def index
        render json: Customer.all, status: :ok
    end

    def show                           #change params to session
        # found_customer = Customer.find(session[:customer_id])

        if found_customer
            #sending text response back to viewer
            render json: found_customer, serializer: CustomerShowSerializer
        else
            render json: { "error": "Customer not found" }, status: :not_found
        end
    end

    #POST to /customers
    # def create

    #     new_customer = Customer.create!(

    #         name: params[:name],
    #         address: params[:address],
    #         email: params[:email],
    #         phone: params[:phone],
    #         age: params[:age],
    #         username: params[:username],

    #         password: params[:password]
            
    #     )
    # end
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

    def update 
        customer_to_patch = Customer.find_by( id: params[:id] )
        if customer_to_patch

            customer_to_patch.update( edit_customer_params )
        
            if customer_to_patch.valid?

                render json: customer_to_patch
            
            else 

                render json: { "errors": customer_to_patch.errors.full_messages}, status: :unprocessable_entity
            end
        else
            render json: { "error": "Customer not found" }, status: :not_found
        end
    end

    def destroy
        customer_deleted = Customer.find_by_id(params[:id])
        if customer_deleted
            customer_deleted.destroy
            head :no_content
        else
            render json: { message: "Nothing to delete" }, status: :not_found
        end
    end

    private 
    # #Issue Finding a Customer
    # def customer_not_found
    #     render json: { error: "Customer not found" }
    # end

    # #Issue Creating a Customer
    # def customer_unable_to_create( the_invalid_customer )
        
    #     render json: { errors: the_invalid_customer.errors.full_message }
    # end



    def new_customer_params
        params.permit(:name, :address, :email, :phone, :age, :username, :password)
    end

    def edit_customer_params
        #implicit return with attributes 
        params.permit(:name, :address, :email, :phone, :age, :username, :password)
    end
end




