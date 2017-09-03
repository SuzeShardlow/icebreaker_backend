class User < ApplicationRecord

  has_secure_password

  has_and_belongs_to_many :events
  has_many :comments, through: :events

  validates :username, presence: true
  validates :email, uniqueness: true


end
