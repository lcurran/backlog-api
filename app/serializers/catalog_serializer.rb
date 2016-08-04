#
class CatalogSerializer < ActiveModel::Serializer
  attributes   :id,
               :name,
               :summary,
               :storyline,
               :videos,
               :cover
end
