class Game < ActiveRecord::Base
  has_many :users, through: :libraries
  has_many :libraries
  validates :name, uniqueness: true

  serialize :video
  serialize :cover
end
