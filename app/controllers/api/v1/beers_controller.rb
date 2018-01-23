class Api::V1::BeersController < ApplicationController

  def index
    @beers = Beer.all
    render json: @beers
  end

  def show
    @beer = Beer.find(params[:id])
    render json: @beer
  end

  def create
    @beer = Beer.find_or_create_by(beer_params)
    render json: @beer
  end


  private

  def beer_params
    params.require(:beer).permit(:name, :description, :abv, :style, :brewery)
  end


end
