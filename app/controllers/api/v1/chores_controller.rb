class Api::V1::ChoresController < ApplicationController

    def create
        chore = Chore.create(chore_params)
        render json: {chore: ChoreSerializer.new(chore)}
    end

    def update
        chore = Chore.find(params[:id])
        chore.update(chore_params)
        if chore.valid? 
            render json: { chore: ChoreSerializer.new(chore) }
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
