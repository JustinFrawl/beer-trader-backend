class Api::V1::TradesController < ApplicationController

  def index
    @trades = Trade.all
    render json: @trades
  end

  def show
    @trade = Trade.find(params[:id])
    render json: @trade
  end

  def create
    @trade = Trade.create(trade_params)
    render json: @trade
  end

  def destroy
    # byebug
    @trade = Trade.find(params[:id])
    @deletedTrade = @trade.dup
    render json: @deletedTrade
    @trade.destroy
  end

  def update
    @trade = Trade.find(params[:id])
    @trade.update(trade_params)
    render json: @trade
  end


  private

  def trade_params
    params.require(:trade).permit(:creator_id, :receiver_id, :creator_beer_id, :receiver_beer_id, :status, :date_created)
  end


end
