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
        reply = Reply.create(reply_params)

        render json: reply
    end

    def update 
        reply = Reply.find(params[:id])
        reply.update(content: params[:content])

        render json: reply
    end

    private 

    def reply_params 
        params.permit(:content, :post_id, :replyname, :user_id)
    end
end
