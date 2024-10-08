class StatusChange < ApplicationRecord
  belongs_to :project
  belongs_to :user

  validates :previous_status, presence: true
  validates :new_status, presence: true
end
