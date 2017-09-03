class EventSerializer < ActiveModel::Serializer
  attributes :eventid, :name, :status, :time, :duration, :link, :description
end
