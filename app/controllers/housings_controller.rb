class HousingsController < ApplicationController

    def index
        render json: Housing.all, status: :ok
    end

    def show
        found_housing = Housing.find_by_id(params[:id])

        if found_housing
            #sending text response back to viewer
            render json: found_housing
        else
            render json: { "error": "Housing not found" }, status: :not_found
        end
    end

    def create 
        new_housing = Housing.new(new_housing_params)
        
        if new_housing.save
            render json: new_housing, serializer: HousingShowSerializer
        else
            render json: {
                "errors": new_housing.errors.full_messages
            }, status: :unprocessable_entity
        end
    end

    def update 
        housing_to_patch = Housing.find_by( id: params[:id] )
        if housing_to_patch

            housing_to_patch.update( edit_housing_params )
        
            if housing_to_patch.valid?

                render json: housing_to_patch
            
            else 

                render json: { "errors": housing_to_patch.errors.full_messages}, status: :unprocessable_entity
            end
        else
            render json: { "error": "Housing not found" }, status: :not_found
        end
    end

    def destroy
        housing_deleted = Housing.find_by_id(params[:id])
        if housing_deleted
            housing_deleted.destroy
            head :no_content
        else
            render json: { message: "Nothing to delete" }, status: :not_found
        end
    end

    private 
    # all methods below here are private
    #strong params

    def new_housing_params
        #implicit return with attributes 
        params.permit(:address, :image, :overview, :price)
    end

    def edit_housing_params
        #implicit return with attributes 
        params.permit(:address, :image, :overview, :price)
    end

end
