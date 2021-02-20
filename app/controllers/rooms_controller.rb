class RoomsController < ApplicationController
    def index
        render json: Room.All
    end

    def create
        @room = Room.new(params.permit(:room)[:room])
        if @room.save
            render json: @room, status: :created, location: @room
        else
            render json: @room.errors, status: :unprocessable_entity
        end
    end

    def show
        @room = Room.find(params[:id])
        render json: @room
    end

    def destroy
        @room = Room.find(params[:id])
        @room.destroy
    end
end
