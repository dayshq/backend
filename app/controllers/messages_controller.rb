class MessagesController < ApplicationController
    def index
        @messages = message.find(params[:room_id])
        render json: @messages
    end

    def create
        @message = Message.new(params.permit(:message)[:message])
        if @message.save
            ChatChannel.brodcast_to(Room.find(params[:room_id]),@message)
            render json: @message, status: :created, location: @message
        else
            render json: @message.errors, status: :unprocessable_entity
        end
    end

    def show
        @message = Message.find(params[:id])
        render json: @message
    end
end
