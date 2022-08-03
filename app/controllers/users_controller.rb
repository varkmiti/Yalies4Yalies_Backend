class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, except: [:password, :password_digest]
    end

    def create
        
        user = User.new(user_params)
        
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
