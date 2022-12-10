class CommentSerializer < ActiveModel::Serializer
  attributes :id, :post_id, :name, :email, :comment
end
