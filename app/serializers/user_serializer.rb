class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :password, :address
  has_many :beers, through: :beerlists
  has_many :trades, through: :messages
  has_many :messages

end
