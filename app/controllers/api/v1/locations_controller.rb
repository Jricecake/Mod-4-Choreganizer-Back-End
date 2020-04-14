class Api::V1::LocationsController < ApplicationController
    def show
        location = Location.find(params[:id])
        render json: {location: LocationSerializer.new(location)}
    end

    def create
        location = Location.create(location_params)
        render json: {location: LocationSerializer.new(location)}
    end

    def destroy
        location = Location.find(params[:id])
        location.destroy
        render json: {message: "House successfully deleted"} 
    end

    private

    def location_params
        params.require(:location).permit(:name, :creator)
    end

end
