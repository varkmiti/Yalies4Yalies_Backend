class RepliesController < ApplicationController
    def index
        replies = Reply.all
        render json: replies
    end

    def create
        reply = Reply.create(content: params[:content], post_id: params[:post_id], replyname: params[:replyname])

        render json: reply
    end
end
