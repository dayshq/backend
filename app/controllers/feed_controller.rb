class FeedController < ApplicationController
    def home
        @friends = Friend.find(params[:person_id])
        @posts = []
        @friends.each do |friend|
            @posts += Post.find([friend.id])
        end
        render json: @posts
    end
end
