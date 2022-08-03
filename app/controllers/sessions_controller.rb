class SessionsController < ApplicationController

    def index
        sessions = Session.all

        render json: sessions
    end
    def create
        @user = User.find_by(email: params[:email])
        return head(:forbidden) unless @user.authenticate(params[:password])
        session[:user_id] = @user.id
    end
    
end