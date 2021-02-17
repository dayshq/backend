class PostsController < ApplicationController

    def index
        render json: Post.all
    end    
    
    def create
        @post = Post.new(params.permit(:text,:like))
        @post.save
        render json: @post
    end

    def show
        render json: Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.update(params[:new])
        render json: post
    end

    private
        def post_params
            params.fetch({})
        end
end
