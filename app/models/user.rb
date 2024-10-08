class User < ApplicationRecord
    has_secure_password
    has_many :projects
    has_many :comments
    has_many :status_changes
  
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
  end
  