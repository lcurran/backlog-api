#
class LibrarySerializer < ActiveModel::Serializer
  attributes :id, :game, :user, :game_id, :user_id, :done
  # has_one :user
  # has_one :game

  def user
    object.user_id
  end

  def game
    object.game_id
  end
end
