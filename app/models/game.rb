class Game < ActiveRecord::Base
  has_many :libraries
  has_many :users, through: :libraries
end
