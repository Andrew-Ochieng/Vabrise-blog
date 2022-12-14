class PostSerializer < ActiveModel::Serializer
  attributes :id, :author_id, :title, :image_url, :content, :created_at, :updated_at

  belongs_to :author, serializer: PostAuthorSerializer
end
