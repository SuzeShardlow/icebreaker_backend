class GatheringSerializer < ActiveModel::Serializer
  attributes :id, :duration, :eventid, :name, :status, :time, :groupname, :link

  has_many :users
end
