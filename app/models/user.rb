class User < ApplicationRecord
  validates :role, inclusion: { in: %w( admin ) }
end
