class BeerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :abv, :style
  has_many :users, through: :beerlists
  has_many :trades, through: :tradebeers
end
