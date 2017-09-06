class Comment < ApplicationRecord
  belongs_to :gathering
  belongs_to :user
end
