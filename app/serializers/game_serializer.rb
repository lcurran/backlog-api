# Serializer shows all information for Games
class GameSerializer < ActiveModel::Serializer
  attributes :id,
             :igdb_id,
             :name,
             :summary,
             :storyline,
             :video,
             :cover,
             :users,
             :libraries

  def users
    object.users.pluck(:id)
  end

  def libraries
    object.libraries.pluck(:id)
  end
end
