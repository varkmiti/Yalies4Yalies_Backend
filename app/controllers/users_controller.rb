class UsersController < ApplicationController

    before_action :authorized, only: [:auto_login]

  # REGISTER
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end

  # LOGGING IN
  def login
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end


  def auto_login
    render json: @user
  end

  private

  def user_params
    params.permit(:username, :password, :major, :college, :email)
  end

    # def index
    #     users = User.all
    #     render json: users, except: [:password, :password_digest]
    # end

    # def create
        
    #     user = User.new(user_params)
        
    #     if user.save 
            
    #         render json: user, status: :created
    #     else 
             
    #         render json: user.errors, status: :unprocessable_entity
    #     end 
    # end

    # private

    # def user_params 
    #     params.require(:user).permit(:username, :password, :password_confirmation, :major, :college, :email)
    # end
end
