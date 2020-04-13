class Api::V1::ChoresController < ApplicationController

    def index
        chores = Chore.all
        render json: chores
    end

    def show
        chore = Chore.find(params[:id])
        render json: chore
    end

    def new
        chore = Chore.new
        render json: chore 
    end

    def create
        chore = Chore.create(chore_params)
        render json: chore
    end

    def edit
        chore = Chore.find(params[:id])
        render json: chore
    end

    def update
        chore = Chore.find(params[:id])
        chore.update(chore_params)
        render json: chore
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
