class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            render json: @comment, status: :created
        else
            render json: @comment.errors, status: :unprocessable_entity
        end
    end

    def index
        render json: Comment.find(params[:post_id])
    end

    def update
        @comment = Comment.find(params[:id])
        if @comment.update(comment_params)
            render json: @comment
        else
            render json: @comment.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
    end

    private
        
        def comment_params
            params.permit(:text, :author_id, :post_id, :reply_to).fetch(:comment, {})
        end

end
