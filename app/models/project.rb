class Project < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :status_changes, dependent: :destroy

  # Define available statuses (example)
  STATUSES = ['open', 'in_progress', 'completed', 'archived']
end
