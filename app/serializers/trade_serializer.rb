class TradeSerializer < ActiveModel::Serializer
  attributes :id, :creator_id, :receiver_id, :creator_beer_id, :receiver_beer_id
  has_many :messages
  has_many :users, through: :messages
  has_many :beers, through: :trade_beers
end
