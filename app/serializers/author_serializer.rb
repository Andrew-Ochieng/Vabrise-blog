class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :password_digest, :image_url

  has_many :posts, dependent: :destroy
end
