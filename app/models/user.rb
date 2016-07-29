#
class User < ActiveRecord::Base
  include Authentication
  has_many :catalogs, dependent: :destroy
  has_many :games, through: :catalogs
end
