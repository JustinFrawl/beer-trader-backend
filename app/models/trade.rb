class Trade < ApplicationRecord
  has_many :messages
  has_many :trade_beers
  has_many :users, through: :messages
  has_many :beers, through: :trade_beers
end
