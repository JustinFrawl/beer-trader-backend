class Beer < ApplicationRecord
  has_many :beerList
  has_many :users, through: :beerList
  has_many :trade_beers
  has_many :trades, through: :trade_beers
end
