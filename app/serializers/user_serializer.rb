#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :games, :libraries

  def games
    object.games.pluck(:id)
  end

  def libraries
    object.libraries.pluck(:id)
  end
end
