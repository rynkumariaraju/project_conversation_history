class Comment < ApplicationRecord
  belongs_to :project
  belongs_to :user  # Assuming each comment is linked to a user
  validates :body, presence: true  # Validate that body cannot be blank
end
