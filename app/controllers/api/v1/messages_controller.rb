class Api::V1::MessagesController < ApplicationController

  def index
    @messages = Message.all
    render json: @messages
  end

  def show
    @message = Message.find(params[:id])
    render json: @message
  end

  def create
    @message = Message.create(message_params)
    render json: @message
  end


  private

  def message_params
    params.require(:message).permit(:user_id, :trade_id, :receiver_id, :content)
  end


end
