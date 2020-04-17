class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

    def update
        user = User.find(params[:id])
        if ( !user_params[:location_id] || Location.find_by(id: user_params[:location_id]) )
          user.update(user_params)
          if user.valid?  
            render json: { user: UserSerializer.new(user) }
          else
            render json: { error: user.errors.full_messages }, status: :not_acceptable
          end
        else
          render json: { error: 'Not a valid house id. Please try again'}
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
          render json: { error: user.errors.full_messages }, status: :not_acceptable
        end
    end

    private

      def user_params
        params.require(:user).permit(:username, :password, :first_name, :last_name, :email, :location_id)
      end
    
end
