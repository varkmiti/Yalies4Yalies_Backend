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
        post = Post.new(post_params)

        if post.save
            render json: post, status: :created
        else 
            render json: post.errors, status: :unprocessable_entity
        end
    end

    def update
        post = Post.find(params[:id])
        post.update(content: params[:content], likes: params[:likes])
        render json: post
    end

    private 

    def post_params 
        params.permit(:title, :user_id, :content, :created_at, :likes, :postname, :tag1, :tag2, :tag3)
    end
end
