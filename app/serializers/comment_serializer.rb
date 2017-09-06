class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :user, :gathering

  has_one :user
  has_one :gathering
end
