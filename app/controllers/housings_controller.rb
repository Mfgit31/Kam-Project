class HousingsController < ApplicationController

    def index
        render json: Housing.all, status: :ok
    end

    def show
        render json: show_housing = Housing.find_by_id(params[:id])
    end

    def create 
        render json: new_housing = Housing.create!(new_housing_params)
    end

    def update 
        update_housing = Housing.find_by!(id: params[:id]).update
    end

    def destroy
        delete_housing = Housing.find_by!(id: params[:id]).destroy
    end

    private 

    def new_housing_params
        params.permit(:address, :image, :overview, :price)
    end

end
