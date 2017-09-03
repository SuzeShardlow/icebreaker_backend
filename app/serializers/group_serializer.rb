class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :url

  has_many :events

end
