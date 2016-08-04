#
class Library < ActiveRecord::Base
  belongs_to :user, foreign_key: :user_id, inverse_of: :libraries
  belongs_to :game, foreign_key: :game_id, inverse_of: :libraries
end
