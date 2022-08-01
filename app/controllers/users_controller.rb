class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.new(username: params[:username],
                            email: params[:email],
                            password: params[:password],
                            college: params[:college],
                            major: params[:major])

        if user.save 
            render json: user, status: :created
        else 
            render json: user.errors, status: :unprocessable_entity
        end 
    end

    private

    def user_params 
        params.require(:user).permit(:username, :password, :password_confirmation, :major, :college, :email)
    end
end
