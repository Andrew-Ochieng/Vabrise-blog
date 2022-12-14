class PostSerializer < ActiveModel::Serializer
  attributes :id, :author_id, :title, :image_url, :content

  belongs_to :author, serializer: PostAuthorSerializer
end
