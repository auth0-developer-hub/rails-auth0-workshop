class Message < ApplicationRecord
  belongs_to :user 

  validates :type, inclusion: { in: %w(protected public) }

  def verbose
    type == ADMIN ? "This is an #{type} message." : "This is a #{type} message."
  end
end
