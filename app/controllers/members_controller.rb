class MembersController < ApplicationController
    def index
        @members = Member.find(params[:room_id])
        render json: @members
    end

    def create
        @member = Member.new(params.permit(:member)[:member])
        if @member.save
            render json: @member, status: :created, location: @member
        else
            render json: @member.errors, status: :unprocessable_entity
        end
    end

    def show
        @member = Member.find(params[:id])
        render json: @member
    end

    def destroy
        @member = Member.find(params[:id])
        @member.destroy
    end
end
