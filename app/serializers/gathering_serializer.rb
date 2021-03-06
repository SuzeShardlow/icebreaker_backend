class GatheringSerializer < ActiveModel::Serializer
  attributes :id, :duration, :eventid, :name, :status, :time, :groupname, :link, :meetupvenuename, :meetupvenuelat, :meetupvenuelong, :meetupvenueaddress, :user_ids, :comment_ids

  has_many :users
  has_many :comments
end
