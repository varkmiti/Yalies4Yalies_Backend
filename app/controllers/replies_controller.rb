class RepliesController < ApplicationController
    def index
        replies = Reply.all
        render json: replies
    end

    def show 
        reply = Reply.find(params[:id])

        render json: reply
    end

    def create
        reply = Reply.create(content: params[:content], post_id: params[:post_id], replyname: params[:replyname], user_id: params[:user_id])

        render json: reply
    end

    def update 
        reply = Reply.find(params[:id])
        reply.update(content: params[:content])

        render json: reply
    end
end
