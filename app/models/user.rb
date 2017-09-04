class User < ApplicationRecord
  validates :username, presence: true
  validates :email, uniqueness: true

  has_secure_password
  has_and_belongs_to_many :gatherings
  has_many :comments

end
