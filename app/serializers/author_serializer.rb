# app/serializers/author_serializer.rb
class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile, serializer: ProfileSerializer, only: [:username, :email, :bio, :avatar_url]
  has_many :posts, serializer: AuthorPostSerializer
  
end
