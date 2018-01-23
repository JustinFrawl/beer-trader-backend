class Api::V1::TradeBeersController < ApplicationController

  def index
    @tradebeers = TradeBeer.all
    render json: @tradebeers
  end

  def show
    @tradebeer = TradeBeer.find(params[:id])
    render json: @tradebeer
  end

  def create
    @tradebeer = TradeBeer.find_or_create_by(tradebeer_params)
    render json: @tradebeer
  end


  private

  def tradebeer_params
    params.require(:tradebeer).permit(:beer_id, :trade_id)
  end


end
