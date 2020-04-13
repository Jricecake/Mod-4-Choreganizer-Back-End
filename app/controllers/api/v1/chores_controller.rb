class Api::V1::ChoresController < ApplicationController

    def show
        chore = Chore.find(params[:id])
        render json: chore
    end


    def create
        chore = Chore.create(chore_params)
        render json: chore
    end

    def update
        chore = Chore.find(params[:id])
        if chore.valid?
            chore.update(chore_params)
            render json: chore
        else
            render json: { error: 'failed to update chore' }, status: :not_acceptable
        end
    end

    def destroy
        chore = Chore.find(params[:id])
        chore.destroy
        render json: {message: "Chore successfully deleted"}
    end

    private

    def chore_params
        params.require(:chore).permit(:name, :description, :user_id, :location_id, :day, :icon, :completed)
    end

end
