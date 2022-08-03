class PostsController < ApplicationController
    def index
        posts = Post.all
        ordered_posts = Post.order_by_time
        render json: ordered_posts
    end

    def show 
        post = Post.find(params[:id])

        render json: post
    end

    def create
        post = Post.new(title: params[:title],
                            content: params[:content],
                            likes: 0,
                            postname: params[:postname],
                            tag1: params[:tag1],
                            tag2: params[:tag2],
                            tag3: params[:tag3])

        if post.save
            render json: post, status: :created
        else 
            render json: post.errors, status: :unprocessable_entity
        end
    end

    def update
        post = Post.find(params[:id])
        post.likes = Post.update(likes: params[:likes])

        render json: post
    end

    private 

    # def post_params 
    #     params.require(:post).permit(:title, :student_id, :content, :created_at)
    # end
end
