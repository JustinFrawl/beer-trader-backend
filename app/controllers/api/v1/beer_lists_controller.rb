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
    @beerlist = BeerList.find_or_create_by(beerlist_params)
    render json: @beerlist
  end


  private

  def beerlist_params
    params.require(:beer_list).permit(:user_id, :beer_id)
  end


  end
