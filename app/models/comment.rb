class Comment < ApplicationRecord

  has_one :user, through: :events
  belongs_to :event

end
