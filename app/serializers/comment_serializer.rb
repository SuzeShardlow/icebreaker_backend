class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :date

  has_one :user
end
