class User < ApplicationRecord
  has_many :messages
  
  validates :role, inclusion: { in: %w( admin ) }, allow_nil: true
end