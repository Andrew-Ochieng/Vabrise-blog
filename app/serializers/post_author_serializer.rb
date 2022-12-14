class PostAuthorSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :image_url
  has_many :authors
end
