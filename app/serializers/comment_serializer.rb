class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :date

  has_one :event
  has_one :user, through: :events

end
