class PostsController < ApplicationController
    def index
        posts = Post.all
        render json: posts
    end

    def create
        post = Post.create(title: params[:title], content: params[:content])

        # if book.save
        #     render json: post, status: :created
        # else 
        #     render json: book.errors, status: :unprocessable_entity
        # end
        render json: post
    end

    private 

    # def post_params 
    #     params.require(:post).permit(:title, :student_id, :content, :created_at)
    # end
end
