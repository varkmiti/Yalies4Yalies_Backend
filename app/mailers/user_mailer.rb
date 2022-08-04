class UserMailer < ApplicationMailer
    def new_user 
        @user = params[:user]

        mail(to: @user.email, subject: "Welcome to Yalies!")
    end

    def new_reply
        @user = params[:user]
        @reply = params[:reply]

        mail(to: @user.email, subject: "Someone replied to your post!")
    end
end
