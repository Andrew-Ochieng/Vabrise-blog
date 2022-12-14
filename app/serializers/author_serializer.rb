class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :password_digest
end
