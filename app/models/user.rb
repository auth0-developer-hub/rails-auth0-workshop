class User < ApplicationRecord
  has_many :messages
  
  validates :role, inclusion: { in: %w( admin ) }, allow_nil: true
  validates :nickname, presence: true, uniqueness: true
end