class Api::V1::BeerListsController < ApplicationController
  def index
    @beerlists = BeerList.all
    render json: @beerlists
  end

  def show
    @beerlist = BeerList.find(params[:id])
    render json: @beerlist
  end

  def create
    @beerlist = BeerList.create(beerlist_params)
    render json: @beerlist
  end


  private

  def beerlist_params
    params.require(:beerlist).permit(:user_id, :beer_id)
  end


  end
