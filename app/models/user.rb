require 'bcrypt'

class User < ApplicationRecord
  has_many :messages
  has_many :trades, through: :messages
  has_many :beerList
  has_many :beers, through: :beerList
  has_secure_password

end
