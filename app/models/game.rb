class Game < ActiveRecord::Base
  has_many :users, through: :libraries
  has_many :libraries

  serialize :videos
  serialize :cover
end
