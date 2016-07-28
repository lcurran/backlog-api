# Serializer shows all information for Games
class GameSerializer < ActiveModel::Serializer
  attributes :id,
             :igdb_id,
             :name,
             :summary,
             :storyline,
             :videos,
             :cover
end
