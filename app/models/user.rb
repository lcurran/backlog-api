#
class User < ActiveRecord::Base
  include Authentication
  has_many :libraries, dependent: :destroy
  has_many :games, through: :libraries
end
