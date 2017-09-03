class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :firstname, :lastname, :fullname, :email, :jobtitle, :linkedinurl, :bio, :password_digest

  def fullname
    "#{object.firstname} #{object.lastname}"
  end

  has_many :comments, through: :events
  has_many :events

end
