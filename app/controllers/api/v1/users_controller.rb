class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  

    def show
        user = User.find(params[:id])
        render json: user
    end

    def update
        user = User.find(params[:id])
        if user.valid?
            user.update(user_params)
            render json: user
        else
            render json: { error: 'failed to update user' }, status: :not_acceptable
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {message: "User successfully deleted"}
    end

    def create 
        user = User.create(user_params)
        if user.valid?
          @token = issue_token(user)
          render json: { user: UserSerializer.new(user), jwt: @token }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    private

      def user_params
        params.require(:user).permit(:username, :password, :first_name, :last_name, :email, :location_id)
      end
    
end
