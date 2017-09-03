class EventSerializer < ActiveModel::Serializer
  attributes :eventid, :name, :status, :time, :duration, :link, :description

  has_one :group
  has_many :users
  has_many :comments

end
